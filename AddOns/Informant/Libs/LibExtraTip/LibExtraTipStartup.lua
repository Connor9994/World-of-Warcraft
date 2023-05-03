--[[
LibExtraTipStartup

LibExtraTip is a library of API functions for manipulating additional information into GameTooltips by either adding information to the bottom of existing tooltips (embedded mode) or by adding information to an extra "attached" tooltip construct which is placed to the bottom of the existing tooltip.

LibExtraTip is composed of multiple files:
LibExtraTipStartup.lua - startup checks and lib setup
LibExtraTipHandler_DataProc.lua - only one of the Handler files will load, depending on available Client APIs
LibExtraTipHandler_HookSet.lua
LibExtraTip.lua - main code file
LibMoneyFrame.lua - routines for handling display of money values
Load.xml - loads the lua files in the above order

Copyright (C) 2008-2023, by the respective below authors.

This library is free software; you can redistribute it and/or
modify it under the terms of the GNU Lesser General Public
License as published by the Free Software Foundation; either
version 2.1 of the License, or (at your option) any later version.

This library is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public
License along with this library; if not, write to the Free Software
Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA

@author brykrys
@libname LibExtraTip
@version 1.(see below)
--]]

local LIBNAME = "LibExtraTip"
local VERSION_MAJOR = 1
local VERSION_MINOR = 356
-- Minor Version should be updated manually with each (non-trivial) change to any LibExtraTip code file

local lib = LibStub:NewLibrary(LIBNAME.."-"..VERSION_MAJOR, VERSION_MINOR)
if not lib then return end

-- Call function to deactivate any outdated version of the library.
if lib.Deactivate then lib:Deactivate() end

-- Constants used for filetrackerX status variables:
local LOAD_NEW = 5				-- permit the file to load
local LOAD_START = 10			-- set at start of file; blocks reloading of file (or other actions) if an error halts execution
local LOAD_FAIL = 15			-- optional condition to be set if a failure is detected during loading; should block transition to LOAD_COMPLETE
local LOAD_COMPLETE = 20		-- set at end of file, only set if status was LOAD_START; flags that file has loaded without error

local ACTIVATE_START = 45		-- set at start of file's Activate function; blocks re-entry of the Activate function (optional for trivial Activate functions)
local ACTIVATE_FAIL = 50		-- optional condition to be set if a failure is detected during Activate; should block transition to ACTIVATE_COMPLETE
local ACTIVATE_COMPLETE = 55	-- set at end of file's Activate function; all file statuses need to be in this state to allow the Lib to fully Activate

local DEACTIVATED = 99			-- set during Deactivate for each file

--[[
Usage of filetrackerX status variables

1) At head of file:

<include a copy of the above constants>

if status.filetrackerX ~= LOAD_NEW then return end
status.filetrackerX = LOAD_START

2) At tail of file:

if status.filetrackerX == LOAD_START then status.filetrackerX = LOAD_COMPLETE end

3) At head of file's Activate function:

if status.filetrackerX ~= LOAD_COMPLETE then return end
status.filetrackerX = ACTIVATE_START

4) At tail of Activate function:

if status.filetrackerX == ACTIVATE_START then status.filetrackerX = ACTIVATE_COMPLETE end

Optional: for a trivial Activate function, must still check for LOAD_COMPLETE state
but may then jump directly to ACTIVATE_COMPLETE without going through ACTIVATE_START

Note:
lib:IsActive() checks the filetrackerX status for every file, returns true if ALL are at ACTIVATE_COMPLETE

--]]

-- private table used to pass functions and data between multiple files
local private = lib.private
if not private then
	private = {}
	lib.private = private
end

-- table containing functions and data only needed at startup
-- will be deleted during Activation sequence
private.startup = {}

-- status table for flags and status trackers
local status = private.status
if not status then
	status = {}
	private.status = status
end

-- versions table - store version information in a single place
local versions = {
	LIBNAME = LIBNAME,
	MAJOR = VERSION_MAJOR,
	MINOR = VERSION_MINOR,
}
private.startup.oldversions = private.versions -- preserve previous version info; may be nil
private.versions = versions

-- detect if Client is Classic or Retail
if WOW_PROJECT_ID ~= WOW_PROJECT_MAINLINE then
	local _,_,_,TOCVERSION = GetBuildInfo()
	local classicexpansion = floor(TOCVERSION / 10000)
	lib.Classic = classicexpansion -- old style for compatibility
	versions.CLASSIC = classicexpansion
end

-- set status to permit other files to load
status.filetrackerMain = LOAD_NEW
status.filetrackerHandler = LOAD_NEW

LibStub("LibRevision"):Set("$URL$","$Rev$","10.02.DEV.", 'auctioneer', 'libs')

