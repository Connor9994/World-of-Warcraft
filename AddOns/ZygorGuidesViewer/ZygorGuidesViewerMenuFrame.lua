local name,ZGV = ...
--ZYGORGUIDESVIEWERFRAME_TITLE = "Zygor Guides Viewer";
ZYGORGUIDESVIEWERFRAME_TITLE = " ";

-- GLOBAL ZygorGuidesViewerFrame_HighlightCurrentStep,ZygorGuidesViewerFrame_OnHide,ZygorGuidesViewerFrame_OnLoad,ZygorGuidesViewerFrame_OnShow,ZYGORGUIDESVIEWERFRAME_TITLE,ZygorGuidesViewerFrame_Update

function ZygorGuidesViewerFrame_OnLoad()
end

function ZygorGuidesViewerFrame_OnHide()
	ZGV:Frame_OnHide();
end

function ZygorGuidesViewerFrame_OnLoad()
	--
end

function ZygorGuidesViewerFrame_OnShow()
	ZGV:Frame_OnShow();
end

function ZygorGuidesViewerFrame_Update()
	if ZGV then ZGV:UpdateMainFrame() end
end

function ZygorGuidesViewerFrame_HighlightCurrentStep()
	if ZGV.CurrentStep then ZGV:HighlightCurrentStep() end
end