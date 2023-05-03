-- If you'd like to add a new locale, please open a pull request on the GitHub repository here: https://github.com/J141/WoW-BuyemAll-live/pulls
-- If you don't know what a pull request is or how to do it, you may also open an issue and just paste below code into the issue. I will then make sure the localisation gets included into the addon. Issues url: https://github.com/J141/WoW-BuyemAll-live/issues

if GetLocale() == "xxXX" then --change xxXX to the language code, like esES, esMX, frFR or nlNL.
	BUYEMALL_LOCALS = {
	MAX 			= "Max",
	STACK 		= "Stack",
	CONFIRM 		= "Are you sure you want to buy\n %d × %s?", --%d is the number of items, %s is the item name. 'x' in the middle is the times sign (e.g. 201 x 'item')
	STACK_PURCH	= "Stack Purchase",
	STACK_SIZE 	= "Stack size",
	PARTIAL 		= "Partial stack",
	MAX_PURCH		= "Maximum purchase",
	FIT			= "You can fit",
	AFFORD		= "You can afford",
	AVAILABLE		= "Vendor has",
}
end

local L = BUYEMALL_LOCALS;
