"Filed out from Dolphin Smalltalk 7"!

WebTextArea subclass: #WebRichEditor
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WebRichEditor guid: (GUID fromString: '{3268ffb9-7fbf-4e20-9b36-f0361b333b28}')!
WebRichEditor comment: 'WebRichEditor is a JavaScript HTML WYSIWYG editor. Use it instead of text areas and you can rich edit your text!!

Usage:
	anElement addRichEditorAspect: #body for: myDocument'!
!WebRichEditor categoriesForClass!Unclassified! !
!WebRichEditor methodsFor!

contentStyleUrl
	"where we have a CSS for content"
	^'/rich-editor.css' "as defined in WebStyle richEditorStyleSheet"
"	^'/tinymce/jscripts/tiny_mce/themes/advanced/skins/default/content.css'" "default only" 
"	^'/tinymce/jscripts/tiny_mce/themes/advanced/skins/default/content.css, /screen.css'"!

ensureCssResourceForEditor
	"CSS for content of editor at /rich-editor.css
	see WebStyle richEditorCssResource and richEditorStyleSheet"
	"Be carefull to add the same url in initRichEditorScript at content_css !!"
	| site |
	site := self app site.
	site urlResolver halfUrlFor: site style richEditorCssResource. "just to register if not yet"!

ensureJavascriptForEditorInHeader
	| page url headerValue |
	page := self context page.
	url := '/tinymce/jscripts/tiny_mce/tiny_mce.js'.
	headerValue := ' src="', url, '" language="JavaScript" type="text/javascript"'.
	(page headers contains: [:each | each key = 'script' and: [each value = headerValue] ]) ifFalse: 
		[page addHeader: 'script' value: headerValue.
		page addJavascript: self richEditorInitScript].!

initialize
	super initialize.
	self attributesAt: 'mce_editable' put: 'true'.
	self ensureJavascriptForEditorInHeader.
	self ensureCssResourceForEditor.!

inlinePopups
	"popup windows shown inline?"
	^true!

language
	^'sl'!

richEditorInitScript
	"See TinyMCE docs for explanation: http://tinymce.moxiecode.com/tinymce/docs/index.html"
	^'
tinyMCE.init({
	mode : "specific_textareas",
	textarea_trigger : "mce_editable",
	language : "', self language,  '",
	content_css : "', self contentStyleUrl, '",
	theme : "advanced",
	plugins : "paste, table, save, autosave, searchreplace, advimage', 
		(self inlinePopups ifTrue: [', inlinepopups'] ifFalse: ['']), '",
	theme_advanced_buttons1 : "save, , | , undo, redo, | , bold, italic, underline, strikethrough, sub, sup, | , bullist, numlist, outdent, indent, | , formatselect, fontsizeselect, | , justifyleft, justifycenter, justifyright,  justifyfull",
	theme_advanced_buttons2 : "cut, copy, pastetext, pasteword, | , search, replace, hr, | , tablecontrols, | , forecolor,backcolor, | , charmap, image,  flash, link, unlink",
	theme_advanced_buttons3 : "",
	theme_advanced_toolbar_location : "top",
	theme_advanced_toolbar_align : "left",
	extended_valid_elements : "a[name|href|target|title|onclick],img[class|src|border=0|alt|title|hspace|vspace|width|height|align|onmouseover|onmouseout|name],hr[class|width|size|noshade],font[face|size|color|style],span[class|align|style]",
	save_enablewhendirty: "true",
	paste_use_dialog : "false",
	button_tile_map : "true",
	gecko_spellcheck : "true"
});
'! !
!WebRichEditor categoriesFor: #contentStyleUrl!public!setup! !
!WebRichEditor categoriesFor: #ensureCssResourceForEditor!initialize-release!public! !
!WebRichEditor categoriesFor: #ensureJavascriptForEditorInHeader!initialize-release!public! !
!WebRichEditor categoriesFor: #initialize!initialize-release!public! !
!WebRichEditor categoriesFor: #inlinePopups!public!setup! !
!WebRichEditor categoriesFor: #language!public!setup! !
!WebRichEditor categoriesFor: #richEditorInitScript!public!setup! !

