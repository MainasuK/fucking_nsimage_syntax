//
//  FNSPageGenerator.m
//  fucking_nsimage_syntax
//
//  Created by hetima on 2014/10/28.
//  Copyright (c) 2014年 hetima. All rights reserved.
//

#import "FNSPageGenerator.h"

@implementation FNSPageGenerator{
    NSString* _generatedBy;
}


- (instancetype)initWithDirectory:(NSString*)path
{
    self = [super init];
    if (self) {
        _outputDirectory=path;
        _errorString=nil;
        _generatorVersion=@"20190819-4";
        BOOL isDir;
        if ([[NSFileManager defaultManager]fileExistsAtPath:path isDirectory:&isDir]) {
            if (!isDir) {
                _errorString=@"file exists at output destination.";
            }
        }else{
            if(![[NSFileManager defaultManager]createDirectoryAtPath:path withIntermediateDirectories:YES attributes:nil error:nil]){
                _errorString=@"couldn't create output directory.";
            }
        }
        
        _generatedBy=[NSString stringWithFormat:@"<p style=\"color:#777; font-size:90%%;\">generated by <a href=\"https://github.com/hetima/fucking_nsimage_syntax\">fucking_nsimage_syntax</a> ver.%@</p>", _generatorVersion];

    }
    return self;
}


+ (NSArray*)hiddenNames
{
    NSArray* result=@[
    @{@"name": @"", @"values": @[
        @"NSTokenPopDownArrow",
        @"NSMenuOnStateTemplate",
        @"NSMenuMixedStateTemplate",
        @"NSStatusAvailableFlat",
        @"NSStatusPartiallyAvailableFlat",
        @"NSStatusUnavailableFlat",
        @"NSStatusNoneFlat",
        @"NSScriptTemplate",
        @"NSPrivateArrowNextTemplate",
        @"NSPrivateArrowPreviousTemplate",
        @"NSPrivateChaptersTemplate",
        @"NSAudioOutputMuteTemplate",
        @"NSAudioOutputVolumeOffTemplate",
        @"NSAudioOutputVolumeLowTemplate",
        @"NSAudioOutputVolumeMedTemplate",
        @"NSAudioOutputVolumeHighTemplate",
        @"NSDropDownIndicatorTemplate",
        @"NSSecurity",
        @"NSSynchronize",
        @"NSAddBookmarkTemplate",
        @"NSStatusIdle",
        @"NSStatusAway",
        @"NSStatusOffline",  //blank image
        @"NSStatusUnknown",
        
        //@"NSMoveSplitterUpTemplate", //blank image
        //@"NSMoveSpliterDownTemplate", //not found
        //@"NSMoveSplitterLeftTemplate", //blank image
        //@"NSMoveSplitterRightTemplate", //blank image
        @"NSChildContainerEmptyTemplate",
        @"NSChildContainerTemplate",
        
        @"NSTitlebarExitFullScreenTemplate",
        @"NSTitlebarEnterFullScreenTemplate",
        
        @"NSGoRightSmall",
        @"NSGoLeftSmall",

        
        @"NSNavEjectButton.normal",
        @"NSNavEjectButton.normalSelected",
        @"NSNavEjectButton.pressed",
        @"NSNavEjectButton.rollover",
        @"NSNavEjectButton.small.normal",
        @"NSNavEjectButton.small.normalSelected",
        @"NSNavEjectButton.small.pressed",
        @"NSNavEjectButton.small.rollover",
        @"NSPathLocationArrow",


    ]}, @{@"name": @"Media Control", @"values": @[
        @"NSSkipAheadTemplate",
        @"NSSkipBackTemplate",
        @"NSPlayTemplate",
        @"NSPauseTemplate",
        @"NSRecordStartTemplate",
        @"NSRecordStopTemplate",
        @"NSFastForwardTemplate",
        @"NSRewindTemplate",

    ]}, @{@"name": @"Toolbar", @"values": @[
        @"NSToolbarBookmarks",
        @"NSToolbarMoreTemplate",
        @"NSToolbarClipIndicator",
        @"NSToolbarCustomizeToolbarItemImage",
        @"NSToolbarFlexibleSpaceItemPaletteRep",
        @"NSToolbarSpaceItemPaletteRep",
        @"NSToolbarPrintItemImage",
        @"NSToolbarShowColorsItemImage",
        @"NSToolbarShowFontsItemImage",
        
    ]}, @{@"name": @"Media Browser", @"values": @[
        @"NSMediaBrowserIcon",
        @"NSMediaBrowserMediaTypeAudio",
        @"NSMediaBrowserMediaTypeMovies",
        @"NSMediaBrowserMediaTypePhotos",
        @"NSMediaBrowserMediaTypeAudio",
        @"NSMediaBrowserMediaTypeAudioTemplate32",
        @"NSMediaBrowserMediaTypePhotos",
        @"NSMediaBrowserMediaTypePhotosTemplate32",
        @"NSMediaBrowserMediaTypeMovies",
        @"NSMediaBrowserMediaTypeMoviesTemplate32",

    ]}, @{@"name": @"Color Picker", @"values": @[
        @"NSSmallMagnifyingGlass",
        @"NSCMYKButton",
        @"NSColorPickerCrayon",
        @"NSColorPickerList",
        @"NSColorPickerSliders",
        @"NSColorPickerUser",
        @"NSColorPickerWheel",
        @"NSColorSwatchResizeDimple",
        @"NSGreyButton",
        @"NSHSBButton",
        @"NSMagnifyingGlass",
        @"NSRGBButton",
        @"NSColorSwatchResizeDimple",
     
    ]}, @{@"name": @"Font Panel", @"values": @[
        @"NSFontPanelActionButton",
        @"NSFontPanelActionButtonPressed",
        @"NSFontPanelBlurEffect",
        @"NSFontPanelDropEffect",
        @"NSFontPanelDropEffectPressed",
        @"NSFontPanelEffectsDivider",
        @"NSFontPanelMinusIdle",
        @"NSFontPanelMinusPressed",
        @"NSFontPanelOpacityEffect",
        @"NSFontPanelPaperColour",
        @"NSFontPanelPaperColourPressed",
        @"NSFontPanelPlusIdle",
        @"NSFontPanelPlusPressed",
        @"NSFontPanelSliderThumb",
        @"NSFontPanelSliderThumbPressed",
        @"NSFontPanelSliderTrack",
        @"NSFontPanelSplitterKnob",
        @"NSFontPanelSpreadEffect",
        @"NSFontPanelStrikeEffect",
        @"NSFontPanelStrikeEffectPressed",
        @"NSFontPanelTextColour",
        @"NSFontPanelTextColourPressed",
        @"NSFontPanelUnderlineEffect",
        @"NSFontPanelUnderlineEffectPressed",
        
    ]}, @{@"name": @"Date Picker", @"values": @[
        @"NSDatePickerCalendarArrowLeft",
        @"NSDatePickerCalendarArrowRight",
        @"NSDatePickerCalendarHome",
        @"NSDatePickerClockCenter",
        @"NSDatePickerClockFace",

    ]}, @{@"name": @"Ruler", @"values": @[
        @"NSTextRulerCenterTab",
        @"NSTextRulerDecimalTab",
        @"NSTextRulerFirstLineIndent",
        @"NSTextRulerIndent",
        @"NSTextRulerLeftTab",
        @"NSTextRulerRightTab",
        
    ]}, @{@"name": @"MacBook touch bar", @"values": @[
        NSImageNameTouchBarAddDetailTemplate,
        NSImageNameTouchBarAddTemplate,
        NSImageNameTouchBarAlarmTemplate,
        NSImageNameTouchBarAudioInputMuteTemplate,
        NSImageNameTouchBarAudioInputTemplate,
        NSImageNameTouchBarAudioOutputMuteTemplate,
        NSImageNameTouchBarAudioOutputVolumeHighTemplate,
        NSImageNameTouchBarAudioOutputVolumeLowTemplate,
        NSImageNameTouchBarAudioOutputVolumeMediumTemplate,
        NSImageNameTouchBarAudioOutputVolumeOffTemplate,
        NSImageNameTouchBarBookmarksTemplate,
        NSImageNameTouchBarColorPickerFill,
        NSImageNameTouchBarColorPickerFont,
        NSImageNameTouchBarColorPickerStroke,
        NSImageNameTouchBarCommunicationAudioTemplate,
        NSImageNameTouchBarCommunicationVideoTemplate,
        NSImageNameTouchBarComposeTemplate,
        NSImageNameTouchBarDeleteTemplate,
        NSImageNameTouchBarDownloadTemplate,
        NSImageNameTouchBarEnterFullScreenTemplate,
        NSImageNameTouchBarExitFullScreenTemplate,
        NSImageNameTouchBarFastForwardTemplate,
        NSImageNameTouchBarFolderCopyToTemplate,
        NSImageNameTouchBarFolderMoveToTemplate,
        NSImageNameTouchBarFolderTemplate,
        NSImageNameTouchBarGetInfoTemplate,
        NSImageNameTouchBarGoBackTemplate,
        NSImageNameTouchBarGoDownTemplate,
        NSImageNameTouchBarGoForwardTemplate,
        NSImageNameTouchBarGoUpTemplate,
        NSImageNameTouchBarHistoryTemplate,
        NSImageNameTouchBarIconViewTemplate,
        NSImageNameTouchBarListViewTemplate,
        NSImageNameTouchBarMailTemplate,
        NSImageNameTouchBarNewFolderTemplate,
        NSImageNameTouchBarNewMessageTemplate,
        NSImageNameTouchBarOpenInBrowserTemplate,
        NSImageNameTouchBarPauseTemplate,
        NSImageNameTouchBarPlayPauseTemplate,
        NSImageNameTouchBarPlayTemplate,
        NSImageNameTouchBarQuickLookTemplate,
        NSImageNameTouchBarRecordStartTemplate,
        NSImageNameTouchBarRecordStopTemplate,
        NSImageNameTouchBarRefreshTemplate,
        NSImageNameTouchBarRewindTemplate,
        NSImageNameTouchBarRotateLeftTemplate,
        NSImageNameTouchBarRotateRightTemplate,
        NSImageNameTouchBarSearchTemplate,
        NSImageNameTouchBarShareTemplate,
        NSImageNameTouchBarSidebarTemplate,
        NSImageNameTouchBarSkipAhead15SecondsTemplate,
        NSImageNameTouchBarSkipAhead30SecondsTemplate,
        NSImageNameTouchBarSkipAheadTemplate,
        NSImageNameTouchBarSkipBack15SecondsTemplate,
        NSImageNameTouchBarSkipBack30SecondsTemplate,
        NSImageNameTouchBarSkipBackTemplate,
        NSImageNameTouchBarSkipToEndTemplate,
        NSImageNameTouchBarSkipToStartTemplate,
        NSImageNameTouchBarSlideshowTemplate,
        NSImageNameTouchBarTagIconTemplate,
        NSImageNameTouchBarTextBoldTemplate,
        NSImageNameTouchBarTextBoxTemplate,
        NSImageNameTouchBarTextCenterAlignTemplate,
        NSImageNameTouchBarTextItalicTemplate,
        NSImageNameTouchBarTextJustifiedAlignTemplate,
        NSImageNameTouchBarTextLeftAlignTemplate,
        NSImageNameTouchBarTextListTemplate,
        NSImageNameTouchBarTextRightAlignTemplate,
        NSImageNameTouchBarTextStrikethroughTemplate,
        NSImageNameTouchBarTextUnderlineTemplate,
        NSImageNameTouchBarUserAddTemplate,
        NSImageNameTouchBarUserGroupTemplate,
        NSImageNameTouchBarUserTemplate,
        NSImageNameTouchBarVolumeDownTemplate,
        NSImageNameTouchBarVolumeUpTemplate,
        
    ]}, @{@"name": @"Cursor (Legacy)", @"values": @[
        @"NSArrowCursor",
        @"NSClosedHandCursor",
        @"NSHandCursor",

        @"NSIBeamCursor",
        @"NSResizeLeftCursor",
        @"NSResizeRightCursor",
        @"NSResizeLeftRightCursor",
        @"NSCrosshairCursor",
        @"NSCopyDragCursor",
        @"NSGenericDragCursor",
        @"NSLinkDragCursor",
        @"NSMoveCursor",
        @"NSWaitCursor",

        @"NSTruthHResizeCursor",
        @"NSTruthHorizontalResizeCursor",
        @"NSTruthVResizeCursor",
        @"NSTruthVerticalResizeCursor",

        @"NSTruthBottomLeftResizeCursor",
        @"NSTruthTopLeftResizeCursor",
        @"NSTruthBottomRightResizeCursor",
        @"NSTruthTopRightResizeCursor",
        ]}, ];
    
    return result;
}

+ (NSArray*)hiddenLegacyNames
{
    NSArray* result=@[
    @{@"name": @"Platinum", @"values": @[
        @"NSAppleMenuImage",
        @"NSBrowserCellBranch",
        @"NSBrowserCellBranchH",
        @"NSClosedHandCursor",
        @"NSCopyDragCursor",
        @"NSCrosshairCursor",
        @"NSDocEditing",
        @"NSDocSaved",
        @"NSGenericDragCursor",
        @"NSGrayResizeCorner",
        @"NSHandCursor",
        @"NSHighlightedLinkButton",
        @"NSHighlightedMenuArrow",
        @"NSHighlightedScrollDownButton",
        @"NSHighlightedScrollLeftButton",
        @"NSHighlightedScrollRightButton",
        @"NSHighlightedScrollUpButton",
        @"NSLeftMenuBarCap",
        @"NSLinkButton",
        @"NSLinkDragCursor",
        @"NSMacPopUpArrows",
        @"NSMacPullDownArrow",
        @"NSMacSmallPopUpArrows",
        @"NSMacSmallPullDownArrow",
        @"NSMacSubmenuArrow",
        @"NSMacTinyPopUpArrows",
        @"NSMacTinyPullDownArrow",
        @"NSMenuArrow",
        @"NSMenuBackTabKeyGlyph",
        @"NSMenuCheckmark",
        @"NSMenuClearKeyGlyph",
        @"NSMenuCommandKeyGlyph",
        @"NSMenuControlKeyGlyph",
        @"NSMenuDeleteBackwardKeyGlyph",
        @"NSMenuDeleteForwardKeyGlyph",
        @"NSMenuDownArrowKeyGlyph",
        @"NSMenuDownScrollArrow",
        @"NSMenuEndKeyGlyph",
        @"NSMenuEnterKeyGlyph",
        @"NSMenuEscapeKeyGlyph",
        @"NSMenuHelpKeyGlyph",
        @"NSMenuHomeKeyGlyph",
        @"NSMenuISOControlKeyGlyph",
        @"NSMenuLeftArrowKeyGlyph",
        @"NSMenuMixedState",
        @"NSMenuOptionKeyGlyph",
        @"NSMenuPageDownKeyGlyph",
        @"NSMenuPageUpKeyGlyph",
        @"NSMenuRadio",
        @"NSMenuReturnKeyGlyph",
        @"NSMenuRightArrowKeyGlyph",
        @"NSMenuShiftKeyGlyph",
        @"NSMenuTabKeyGlyph",
        @"NSMenuUpArrowKeyGlyph",
        @"NSMenuUpScrollArrow",
        @"NSMenuWindowDirtyState",
        @"NSMiniTextAlignCenter",
        @"NSMiniTextAlignJust",
        @"NSMiniTextAlignLeft",
        @"NSMiniTextAlignRight",
        @"NSMiniTextList",
        @"NSMoveCursor",
        @"NSNavigationBarButtonFillActive",
        @"NSNavigationBarButtonFillInactive",
        @"NSNavigationBarButtonFillPressedAqua",
        @"NSNavigationBarButtonFillPressedGraphite",
        @"NSNavigationBarButtonLeftActive",
        @"NSNavigationBarButtonLeftInactive",
        @"NSNavigationBarButtonLeftPressedAqua",
        @"NSNavigationBarButtonLeftPressedGraphite",
        @"NSNavigationBarButtonRightActive",
        @"NSNavigationBarButtonRightInactive",
        @"NSNavigationBarButtonRightPressedAqua",
        @"NSNavigationBarButtonRightPressedGraphite",
        @"NSNavigationBarLeftAngleActive",
        @"NSNavigationBarLeftAngleInactive",
        @"NSNavigationBarLeftAnglePressedAqua",
        @"NSNavigationBarLeftAnglePressedGraphite",
        @"NSNavigationBarRightAngleActive",
        @"NSNavigationBarRightAngleInactive",
        @"NSNavigationBarRightAnglePressedAqua",
        @"NSNavigationBarRightAnglePressedGraphite",
        @"NSRadioButtonDisabledMixed",
        @"NSRadioButtonDisabledOff",
        @"NSRadioButtonDisabledOn",
        @"NSRadioButtonEnabledMixed",
        @"NSRadioButtonEnabledOff",
        @"NSRadioButtonEnabledOn",
        @"NSRadioButtonFocusRing",
        @"NSRadioButtonHighlightedMixed",
        @"NSRadioButtonHighlightedOff",
        @"NSRadioButtonHighlightedOn",
        @"NSResizeLeftCursor",
        @"NSResizeLeftRightCursor",
        @"NSResizeRightCursor",
        @"NSRightMenuBarCap",
        @"NSScrollDownArrow",
        @"NSScrollDownArrowDisabled",
        @"NSScrollDownButton",
        @"NSScrollLeftArrow",
        @"NSScrollLeftArrowDisabled",
        @"NSScrollLeftButton",
        @"NSScrollRightArrow",
        @"NSScrollRightArrowDisabled",
        @"NSScrollRightButton",
        @"NSScrollUpArrow",
        @"NSScrollUpArrowDisabled",
        @"NSScrollUpButton",
        @"NSSliderKnobAbove",
        @"NSSliderKnobAboveDisabled",
        @"NSSliderKnobAbovePressed",
        @"NSSliderKnobBelow",
        @"NSSliderKnobBelowDisabled",
        @"NSSliderKnobBelowPressed",
        @"NSSliderKnobHorizontal",
        @"NSSliderKnobHorizontalDisabled",
        @"NSSliderKnobHorizontalPressed",
        @"NSSliderKnobLeft",
        @"NSSliderKnobLeftDisabled",
        @"NSSliderKnobLeftPressed",
        @"NSSliderKnobRight",
        @"NSSliderKnobRightDisabled",
        @"NSSliderKnobRightPressed",
        @"NSSliderKnobVertical",
        @"NSSliderKnobVerticalDisabled",
        @"NSSliderKnobVerticalPressed",
        @"NSSmallSCurveFill_Active_Textured",
        @"NSSmallSCurveFill_Disabled_Textured",
        @"NSSmallSCurveFill_Pressed_Textured",
        @"NSSmallSCurveLeftCap_Active_Textured",
        @"NSSmallSCurveLeftCap_Disabled_Textured",
        @"NSSmallSCurveLeftCap_Pressed_Textured",
        @"NSSmallSCurveRightCap_Active_Textured",
        @"NSSmallSCurveRightCap_Disabled_Textured",
        @"NSSmallSCurveRightCap_Pressed_Textured",
        @"NSSwitchDisabledMixed",
        @"NSSwitchDisabledOff",
        @"NSSwitchDisabledOn",
        @"NSSwitchEnabledMixed",
        @"NSSwitchEnabledOff",
        @"NSSwitchEnabledOn",
        @"NSSwitchFocusRing",
        @"NSSwitchHighlightedMixed",
        @"NSSwitchHighlightedOff",
        @"NSSwitchHighlightedOn",
        @"NSTableViewDropBetweenCircleMarker",
        @"NSTextRulerAlignCentered",
        @"NSTextRulerAlignJustified",
        @"NSTextRulerAlignLeft",
        @"NSTextRulerAlignRight",
        @"NSTextRulerIndentFirst",
        @"NSTextRulerIndentLeft",
        @"NSTextRulerIndentRight",
        @"NSTextRulerLineHeightDecrease",
        @"NSTextRulerLineHeightFixed",
        @"NSTextRulerLineHeightFlexible",
        @"NSTextRulerLineHeightIncrease",
        @"NSTextRulerMarginLeft",
        @"NSTextRulerMarginRight",
        @"NSTextRulerTabCenter",
        @"NSTextRulerTabDecimal",
        @"NSTextRulerTabLeft",
        @"NSTextRulerTabRight",
        @"NSThemeWindowDocument",
        @"NSTriangleNormalDown",
        @"NSTriangleNormalRight",
        @"NSTrianglePressedDown",
        @"NSTrianglePressedRDown",
        @"NSTrianglePressedRight",
        @"NSTriangleWhite-Collapsed",
        @"NSTriangleWhite-Expanded",
        @"NSTriangleWhite-Pressed-Collapsed",
        @"NSTriangleWhite-Pressed-Expanded",
        @"NSTriangleWhite-Turning",
        @"NSTruthClose",
        @"NSTruthCloseH",
        @"NSTruthCollapse",
        @"NSTruthCollapseH",
        @"NSTruthEditedClose",
        @"NSTruthEditedCloseH",
        @"NSTruthHResizeCursor",
        @"NSTruthHorizontalResizeCursor",
        @"NSTruthMiniDocument",
        @"NSTruthMiniDocumentEdited",
        @"NSTruthVResizeCursor",
        @"NSTruthVerticalResizeCursor",
        @"NSTruthZoom",
        @"NSTruthZoomH",
        @"NSUtilityClose",
        @"NSUtilityCloseH",
        @"NSUtilityCollapse",
        @"NSUtilityCollapseH",
        @"NSUtilityEditedClose",
        @"NSUtilityEditedCloseH",
        @"NSUtilityZoom",
        @"NSUtilityZoomH",
        @"NSWin95BrowserBranch",
        @"NSWin95ComboBoxDownArrow",
        @"NSWin95HighlightedBrowserBranch",
        @"NSWin95PopUpArrows",
        @"NSWin95PullDownArrow",
        @"NSWinHighRadio",
        @"NSWinHighSwitch",
        @"NSWinRadio",
        @"NSWinSliderKnobAbove",
        @"NSWinSliderKnobAbovePressed",
        @"NSWinSliderKnobBelow",
        @"NSWinSliderKnobBelowPressed",
        @"NSWinSliderKnobHorizontal",
        @"NSWinSliderKnobHorizontalPressed",
        @"NSWinSliderKnobLeft",
        @"NSWinSliderKnobLeftPressed",
        @"NSWinSliderKnobRight",
        @"NSWinSliderKnobRightPressed",
        @"NSWinSliderKnobVertical",
        @"NSWinSliderKnobVerticalPressed",
        @"NSWinSwitch",
        @"NSWindowClose",
        @"NSWindowCloseH",
        @"NSWindowCollapse",
        @"NSWindowCollapseH",
        @"NSWindowEditedClose",
        @"NSWindowEditedCloseH",
        @"NSWindowMiniDocument",
        @"NSWindowMiniDocumentEdited",
        @"NSWindowZoom",
        @"NSWindowZoomH",
    ]}, @{@"name": @"NX", @"values": @[
        @"NXAppTile",
        @"NXBreak",
        @"NXBreakAll",
        @"NXFollow",
        @"NXGrey0",
        @"NXGrey1",
        @"NXGrey2",
        @"NXGrey3",
        @"NXGrey4",
        @"NXGrey5",
        @"NXGrey6",
        @"NXHDestLinkChain",
        @"NXHSrcLinkChain",
        @"NXHelpBacktrack",
        @"NXHelpFind",
        @"NXHelpIndex",
        @"NXHelpMarker",
        @"NXHelpMarkerH",
        @"NXMagnifier",
        @"NXUpdate",
        @"NXVDestLinkChain",
        @"NXVSrcLinkChain",
        @"NXauto",
        @"NXcircle16",
        @"NXcircle16H",
        @"NXclose",
        @"NXcloseH",
        @"NXdefaultappicon",
        @"NXdefaulticon",
        @"NXdivider",
        @"NXdividerH",
        @"NXediting",
        @"NXfirstindent",
        @"NXhSliderKnob",
        @"NXiconify",
        @"NXiconifyH",
        @"NXleftindent",
        @"NXleftmargin",
        @"NXmanual",
        @"NXminiWindow",
        @"NXminiWorld",
        @"NXpopup",
        @"NXpopupH",
        @"NXpulldown",
        @"NXpulldownH",
        @"NXresize",
        @"NXresizeH",
        @"NXresizeKnob",
        @"NXresizeKnobH",
        @"NXrightindent",
        @"NXrightmargin",
        @"NXscrollKnob",
        @"NXscrollMenuDown",
        @"NXscrollMenuDownD",
        @"NXscrollMenuDownH",
        @"NXscrollMenuLeft",
        @"NXscrollMenuLeftD",
        @"NXscrollMenuLeftH",
        @"NXscrollMenuRight",
        @"NXscrollMenuRightD",
        @"NXscrollMenuRightH",
        @"NXscrollMenuUp",
        @"NXscrollMenuUpD",
        @"NXscrollMenuUpH",
        @"NXsquare16",
        @"NXsquare16H",
        @"NXtab",
        @"NXvSliderKnob",
        @"NXwait",

        
    ]}, ];

    return result;
}


+ (NSDictionary*)publicNames
{
    NSDictionary* result=
    @{
      NSImageNameQuickLookTemplate: @"NSImageNameQuickLookTemplate",
      NSImageNameBluetoothTemplate: @"NSImageNameBluetoothTemplate",
      NSImageNameIChatTheaterTemplate: @"NSImageNameIChatTheaterTemplate",
      NSImageNameSlideshowTemplate: @"NSImageNameSlideshowTemplate",
      NSImageNameActionTemplate: @"NSImageNameActionTemplate",
      NSImageNameSmartBadgeTemplate: @"NSImageNameSmartBadgeTemplate",
      NSImageNameIconViewTemplate: @"NSImageNameIconViewTemplate",
      NSImageNameListViewTemplate: @"NSImageNameListViewTemplate",
      NSImageNameColumnViewTemplate: @"NSImageNameColumnViewTemplate",
      NSImageNameFlowViewTemplate: @"NSImageNameFlowViewTemplate",
      NSImageNamePathTemplate: @"NSImageNamePathTemplate",
      NSImageNameInvalidDataFreestandingTemplate: @"NSImageNameInvalidDataFreestandingTemplate",
      NSImageNameLockLockedTemplate: @"NSImageNameLockLockedTemplate",
      NSImageNameLockUnlockedTemplate: @"NSImageNameLockUnlockedTemplate",
      NSImageNameGoRightTemplate: @"NSImageNameGoRightTemplate",
      NSImageNameGoLeftTemplate: @"NSImageNameGoLeftTemplate",
      
      NSImageNameRightFacingTriangleTemplate: @"NSImageNameRightFacingTriangleTemplate",
      NSImageNameLeftFacingTriangleTemplate: @"NSImageNameLeftFacingTriangleTemplate",
      
      NSImageNameAddTemplate: @"NSImageNameAddTemplate",
      NSImageNameRemoveTemplate: @"NSImageNameRemoveTemplate",
      NSImageNameRevealFreestandingTemplate: @"NSImageNameRevealFreestandingTemplate",
      NSImageNameFollowLinkFreestandingTemplate: @"NSImageNameFollowLinkFreestandingTemplate",
      NSImageNameEnterFullScreenTemplate: @"NSImageNameEnterFullScreenTemplate",
      NSImageNameExitFullScreenTemplate: @"NSImageNameExitFullScreenTemplate",
      NSImageNameStopProgressTemplate: @"NSImageNameStopProgressTemplate",
      NSImageNameStopProgressFreestandingTemplate: @"NSImageNameStopProgressFreestandingTemplate",
      NSImageNameRefreshTemplate: @"NSImageNameRefreshTemplate",
      NSImageNameRefreshFreestandingTemplate: @"NSImageNameRefreshFreestandingTemplate",
      
      NSImageNameBonjour: @"NSImageNameBonjour",
      NSImageNameComputer: @"NSImageNameComputer",
      NSImageNameFolderBurnable: @"NSImageNameFolderBurnable",
      NSImageNameFolderSmart: @"NSImageNameFolderSmart",
      NSImageNameFolder: @"NSImageNameFolder",
      NSImageNameNetwork: @"NSImageNameNetwork",
      
      NSImageNameMobileMe: @"NSImageNameMobileMe",
      
      NSImageNameMultipleDocuments: @"NSImageNameMultipleDocuments",
      
      NSImageNameUserAccounts: @"NSImageNameUserAccounts",
      NSImageNamePreferencesGeneral: @"NSImageNamePreferencesGeneral",
      NSImageNameAdvanced: @"NSImageNameAdvanced",
      
      NSImageNameInfo: @"NSImageNameInfo",
      NSImageNameFontPanel: @"NSImageNameFontPanel",
      NSImageNameColorPanel: @"NSImageNameColorPanel",
      
      NSImageNameUser: @"NSImageNameUser",
      NSImageNameUserGroup: @"NSImageNameUserGroup",
      NSImageNameEveryone: @"NSImageNameEveryone",
      NSImageNameUserGuest: @"NSImageNameUserGuest",
      
      NSImageNameMenuOnStateTemplate: @"NSImageNameMenuOnStateTemplate",
      NSImageNameMenuMixedStateTemplate: @"NSImageNameMenuMixedStateTemplate",

      NSImageNameApplicationIcon: @"NSImageNameApplicationIcon",
      
      NSImageNameTrashEmpty: @"NSImageNameTrashEmpty",
      NSImageNameTrashFull: @"NSImageNameTrashFull",
      NSImageNameHomeTemplate: @"NSImageNameHomeTemplate",
      NSImageNameBookmarksTemplate: @"NSImageNameBookmarksTemplate",
      NSImageNameCaution: @"NSImageNameCaution",
      NSImageNameStatusAvailable: @"NSImageNameStatusAvailable",
      NSImageNameStatusPartiallyAvailable: @"NSImageNameStatusPartiallyAvailable",
      NSImageNameStatusUnavailable: @"NSImageNameStatusUnavailable",
      NSImageNameStatusNone: @"NSImageNameStatusNone",
      
      NSImageNameShareTemplate: @"NSImageNameShareTemplate",
      };

    return result;
}


-(NSString*)generateImageFileNamed:(NSString*)name
{
    if ([name length]<=0) {
        return nil;
    }
    
    NSImage* image=[NSImage imageNamed:name];
    if (!image){
        NSLog(@"\"%@\" not found", name);
        return nil;
    }
    
    NSString* fileName=[name stringByAppendingPathExtension:@"png"];
    NSString* path=[self.outputDirectory stringByAppendingPathComponent:fileName];
    
    // from stackoverflow.com/questions/17507170/how-to-save-png-file-from-nsimage-retina-issues
    CGImageRef cgRef = [image CGImageForProposedRect:NULL context:nil hints:nil];
    NSBitmapImageRep *newRep = [[NSBitmapImageRep alloc] initWithCGImage:cgRef];
    [newRep setSize:[image size]];   // if you want the same resolution
    NSData *pngData = [newRep representationUsingType:NSPNGFileType properties:@{}];
    if([pngData writeToFile:path atomically:YES]){
        return fileName;
    }
    
    return nil;
}


-(NSString*)generatePublicNames
{
    NSMutableString* result=[[NSMutableString alloc]init];
    NSDictionary* names=[FNSPageGenerator publicNames];
    NSArray* keys=[[names allKeys]sortedArrayUsingSelector:@selector(compare:)];
    
    [result appendString:@"<h2>Public Images</h2>"];
    [result appendString:@"<table class=\"pure-table pure-table-bordered\"><thead><tr><th>image</th><th>name</th><th>raw value</th></tr></thead><tbody>\n"];
    
    for (NSString* key in keys) {
        NSString* value=names[key];
        NSString* fileName=[self generateImageFileNamed:key];
        if (fileName) {
            [result appendFormat:@"<tr><td><img class=\"pure-img\" src=\"%@\"></td><td>%@</td><td>@\"%@\"</td></tr>\n", fileName, value, key];
        }
    }
    
    [result appendString:@"</tbody></table>\n"];
    return result;
}

-(NSString*)generateHiddenNames:(NSArray*)hiddenNames
{
    NSMutableString* result=[[NSMutableString alloc]init];
    [result appendString:@"<h2>Undocumented Images</h2>"];
    
    for (NSDictionary* dic in hiddenNames) {
        NSArray* values=dic[@"values"];
        NSString* categoryName=dic[@"name"];

        values=[[values valueForKeyPath:@"@distinctUnionOfObjects.self"]sortedArrayUsingSelector:@selector(compare:)];
        
        if([categoryName length]>0)[result appendFormat:@"<h3>%@</h3>", categoryName];
        [result appendString:@"<table class=\"pure-table pure-table-bordered\"><thead><tr><th>image</th><th>raw value</th></tr></thead><tbody>\n"];
        
        for (NSString* value in values) {
            NSString* fileName=[self generateImageFileNamed:value];
            if (fileName) {
                [result appendFormat:@"<tr><td><img class=\"pure-img\" src=\"%@\"></td><td>@\"%@\"</td></tr>\n", fileName, value];
            }
        }

        [result appendString:@"</tbody></table>\n"];
    }
    
    return result;
}


- (void)generateIndex
{
    NSMutableString* result=[[NSMutableString alloc]init];
    [result appendString:@"<!DOCTYPE html><html><head><meta charset=\"utf-8\"><title>Fucking NSImage Syntax</title>\n"];
    [result appendString:@"<link rel=\"stylesheet\" href=\"http://yui.yahooapis.com/pure/0.5.0/pure-min.css\">\n"];
    [result appendString:@"</head><body><div class=\"content\" style=\"margin:48px;\">"];
    [result appendString:@"<h1>Fucking NSImage Syntax</h1>"];
    
    [result appendString:@"<p>A list of names can be used for +[NSImage imageNamed:]</p>"];
    
    [result appendString:[self generatePublicNames]];
    [result appendString:[self generateHiddenNames:[FNSPageGenerator hiddenNames]]];
    
    [result appendString:@"<p><a href=\"2.html\">More Undocumented Images</a></p>"];
    
    [result appendString:_generatedBy];
    [result appendString:@"</div></body></html>"];
    
    NSString* filePath=[self.outputDirectory stringByAppendingPathComponent:@"index.html"];
    [result writeToFile:filePath atomically:YES encoding:NSUTF8StringEncoding error:nil];
}


- (void)generateLegacyPage
{
    NSMutableString* result=[[NSMutableString alloc]init];
    [result appendString:@"<!DOCTYPE html><html><head><meta charset=\"utf-8\"><title>Fucking NSImage Syntax (page 2)</title>\n"];
    [result appendString:@"<link rel=\"stylesheet\" href=\"http://yui.yahooapis.com/pure/0.5.0/pure-min.css\">\n"];
    [result appendString:@"</head><body><div class=\"content\" style=\"margin:48px;\">"];
    [result appendString:@"<h1>Fucking NSImage Syntax (page 2)</h1>"];
    
    [result appendString:@"<p><a href=\"index.html\">Back to Top</a></p>"];
    
    [result appendString:[self generateHiddenNames:[FNSPageGenerator hiddenLegacyNames]]];
    [result appendString:@"<p><a href=\"index.html\">Back to Top</a></p>"];

    
    [result appendString:_generatedBy];
    [result appendString:@"</div></body></html>"];
    
    NSString* filePath=[self.outputDirectory stringByAppendingPathComponent:@"2.html"];
    [result writeToFile:filePath atomically:YES encoding:NSUTF8StringEncoding error:nil];
}


- (void)generate
{
    [self generateIndex];
    [self generateLegacyPage];
}


@end
