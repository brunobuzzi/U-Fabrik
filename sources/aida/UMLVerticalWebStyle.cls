"Filed out from Dolphin Smalltalk 7"!

DefaultWebStyle subclass: #UMLVerticalWebStyle
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLVerticalWebStyle guid: (GUID fromString: '{9797ee4e-d249-4bc5-bbf2-8a77918cd159}')!
UMLVerticalWebStyle comment: ''!
!UMLVerticalWebStyle categoriesForClass!Unclassified! !
!UMLVerticalWebStyle methodsFor!

css1Body
^'
body {
	margin: 0;
	padding: 0;
	font-family: verdana, sans-serif;
	font-color: #666;
/*	font-size: 90%; */
	font-size: 11pt;
	line-height: 1.2em;
	background: #fff url("/img/leftstripegif.gif") repeat-y;
	}
#container {
	position: relative;
	width: 1800px;
	margin: 0 0 0 8px;
	padding: 0;
	}
#containerPadded {    /* for printing header, has no efect here */
	position: relative;
	width: 1800px;
	margin: 0 0 0 8px;
	padding: 0;
	}
#content {
	margin: 10px 15px 10px 10px;
	padding-top: 20px;
	font-size: 90%;
	text-align: left;
	margin-top/* */: 0; /* IE5.0 Win wont see this - fixes weird float bug for hp */
	}
html>body #content  {
	margin-top: 0;
	}
#content {
	margin-left: 135px;
	padding-left: 0;
	}

/* through all width of page, in navigation space too */
#contentWide {
	margin: 10px 15px 10px 10px;
	padding-top: 20px;
	font-size: 90%;
	text-align: left;
	margin-top/* */: 0; /* IE5.0 Win wont see this - fixes weird float bug for hp */
	}
'!

css40NavigationBar
	^'
#navigation {
	position: absolute;
	width: 175px;
	top: 145px;
	margin-right: 0;
	font-size: 80%;
	color: #333;
	left: 8px; /* fixes weird IE5.0/win absolute position within relative */
	left/* */: 0;
	background: #F0F0E7 url("/img/leftcornergif.gif") no-repeat top right;
	border-style:outset;
	border-width:1px;
	}
html>body #navigation  {
	left: 0;
	}
#navigation div {
	padding: 10px;
	font-size: 100%;
	border-bottom: 1px solid #fff;
	}
#navigation div div {
	padding: 0;
	}
#navigation .boxGrey {
	background: #fff;
	}
#navigation h3 {
	padding: 0;
	margin: 0;
	margin-bottom: 6px;
	font-family: verdana, sans-serif;
	font-size: 100%;
	font-weight: bold;
	letter-spacing: 0;
	color: #AAA799;
      padding-top: 0;
      border-bottom: 0;
	}
#navigation h3 img {
	vertical-align: middle;
	display: inline;
	background: #AAA799;
	}
#navigation p {
	margin: 3px 0 0 0;
	line-height: 1.2em;
	}
#navigation ul, .styledBox ul {
	margin: 0;
	padding: 0;
	list-style: none;
	}
#navigation li, .styledBox li {
	background: url("/img/bulletsquareleftwhitegif.gif") no-repeat 0 1px;
	padding: 0 0 6px 16px;
	line-height: 1em;
	}
button {
	visibility: visible;
	border: 1px solid #ccc;
	background: #f5f5f5;
	color: #666;
	vertical-align: middle;
	padding: 2px;
}
'!

cssTabs1
	^'
/*from A List Apart article: http://www.alistapart.com/articles/slidingdoors/ */
/*WebTabs newClass: #tabs1 but dont forget to define class tabs1selected too !! */

ul.tabs1 {
  float:left; 
  width:220px; 
  height: 100%;
  background:#DAE0D2 url("/img/tab1bggif.gif") repeat-x bottom; 
  font-size:11px;
  line-height:normal;
  margin:0;
  padding: 0 0 0 0;
  list-style:none;
  }
ul.tabs1 li {
  float:left; 
  background:url("/img/tab1leftgif.gif") no-repeat left top;
  margin:0;
  padding:0 0 0 9px;
  }
ul.tabs1 a, ul.tabs1 b {
  float:left; 
  display:block;
  background:url("/img/tab1rightgif.gif") no-repeat right top;
  padding:5px 12px 4px 3px;
  text-decoration:none;
  font-weight:bold;
  color:#765;
  }
/* Commented Backslash Hack
   hides rule from IE5-Mac \*/
/* ul.tabs1 a {float:none;} */
/* End IE5-Mac hack */
/* ul.tabs1 a:hover {color:#333;} */

ul.tabs1 li.tabs1selected {
  background-image:url("/img/tab1leftongif.gif");
  }
ul.tabs1 li.tabs1selected a, ul.tabs1 li.tabs1selected b {
  background-image:url("/img/tab1rightongif.gif");
  color:#333;
  padding-bottom:5px;
  }
'!

cssTabs2
	^'
/*WebTabs newClass: #tabs2 but dont forget to define here class tabs2selected too !! */

ul.tabs2 {
	height: 20px;
	margin: 0;
	padding-left: 10px;
	background: url("/img/tab2bottomgif.gif") repeat-x bottom;
	}
ul.tabs2, ul.tabs2 li {
	margin: 0;
	padding: 0;
	display: inline;
	list-style-type: none;
	}
ul.tabs2 a:link, ul.tabs2 a:visited, ul.tabs2 b {
	float: left;
	background: #f3f3f3;
	font-size: 10px;
	line-height: 14px;
	font-weight: bold;
	padding: 2px 10px 2px 10px;
	margin-right: 4px;
	border: 1px solid #ccc;
	text-decoration: none;
	color: #666;
	}
ul.tabs2 a:hover {
	background: #fff;
	}
ul.tabs2 li.tabs2selected b {
	border-bottom: 1px solid #fff;
	background: #fff;
	color: #000;
	}
'!

cssTabs3
	^'
/*WebTabs newClass: #tabs3 but dont forget to define here class tabs3selected too !! */

ul.tabs3 {
	border-top-width: 2px;
	border-right-width: 2px;
	border-bottom-width: 2px;
	border-left-width: 2px;
	border-bottom-style: solid;
	border-top-color: #CCCCCC;
	border-right-color: #CCCCCC;
	border-bottom-color: #CCCCCC;
	border-left-color: #CCCCCC;
}
ul.tabs3 li {
	background-color: #f0f0e7;
	background-repeat: repeat-x;
	padding: 0px;
	border-top: 2px solid #CCCCCC;
	border-right: 2px none #FFFFFF;
	border-bottom: 0px none #CCCCCC;
	border-left: 2px none #FFFFFF;
	background-position: left center;
	color: #000000;
	display: inline;
	white-space: pre;
	text-align: center;
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	letter-spacing: normal;
	word-spacing: normal;
	margin: 0px;
	clear: none;
	float: none;
	height: 70px;
	width: 60px;
	text-decoration: none;
	background-image: url(/img/tab3backgif.gif);
	vertical-align: baseline;
	}
ul.tabs3 a:link {
	background-color: #f0f0e7;
	background-repeat: repeat-x;
	padding: 4px;
	border-top: 0px solid #CCCCCC;
	border-right: 1px solid #CCCCCC;
	border-bottom: 0px none #FFFFFF;
	border-left: 1px solid #CCCCCC;
	background-position: left center;
	color: #336699;
	display: inline;
	white-space: pre;
	text-align: center;
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	letter-spacing: normal;
	word-spacing: normal;
	margin: 0px;
	clear: none;
	float: none;
	height: 70px;
	width: auto;
	text-decoration: none;
	background-image: url(/img/tab3backgif.gif);
}
ul.tabs3 a:visited {
	background-color: #F0F0E7;
	background-repeat: repeat;
	padding: 4px;
	border-top: 2px solid #CCCCCC;
	border-right: 1px solid #CCCCCC;
	border-bottom: 0px none #CCCCCC;
	border-left: 1px solid #CCCCCC;
	background-position: left center;
	color: #336699;
	display: inline;
	white-space: pre;
	text-align: center;
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	letter-spacing: normal;
	word-spacing: normal;
	margin: 0px;
	clear: none;
	float: none;
	height: 60px;
	width: auto;
	text-decoration: none;
	background-image: url(/img/tab3backgif.gif);
	vertical-align: baseline;
	list-style-image: url(back1.gif);
}
ul.tabs3 a:hover {
	background-color: #F0F0E7;
	background-repeat: repeat;
	padding: 4px;
	border-top: 2px solid #999999;
	border-right: 1px solid #CCCCCC;
	border-bottom: 2px none #FFFFFF;
	border-left: 1px solid #CCCCCC;
	background-position: left center;
	color: #FF9900;
	display: inline;
	white-space: pre;
	text-align: center;
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	letter-spacing: normal;
	word-spacing: normal;
	margin: 0px;
	clear: none;
	float: none;
	height: 70px;
	width: auto;
	text-decoration: none;
	background-image: url(/img/tab3backgif.gif);
}
ul.tabs3 li.tabs3selected {
	background-color: #F0F0E7;
	background-repeat: repeat;
	padding: 4px;
	border-top: 0px solid #CCCCCC;
	border-right: 0px none #FFFFFF;
	border-bottom: 2px solid #CCCCCC;
	border-left: 0px none #FFFFFF;
	background-position: left center;
	color: #FF9900;
	display: inline;
	white-space: pre;
	text-align: center;
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	letter-spacing: normal;
	word-spacing: normal;
	margin: 0px;
	clear: none;
	float: none;
	height: 70px;
	width: auto;
	text-decoration: none;
}
'!

cssTabs4
	^'
/*WebTabs newClass: #tabs4 but dont forget to define here class tabs4selected too !! */

ul.tabs4 {
	border-top-width: 1px;
	border-right-width: 1px;
	border-bottom-width: 1px;
	border-left-width: 1px;
	border-bottom-style: solid;
	border-top-color: #CCCCCC;
	border-right-color: #CCCCCC;
	border-bottom-color: #CCCCCC;
	border-left-color: #CCCCCC;
}
ul.tabs4 li {
	background-color: #f0f0e7;
	background-repeat: repeat-x;
	padding: 0px;
	border-top: 2px solid #CCCCCC;
	border-right: 2px none #FFFFFF;
	border-bottom: 0px none #CCCCCC;
	border-left: 2px none #FFFFFF;
	background-position: left center;
	color: #000000;
	display: inline;
	white-space: pre;
	text-align: center;
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	letter-spacing: normal;
	word-spacing: normal;
	margin: 0px;
	clear: none;
	float: none;
	height: 70px;
	width: 60px;
	text-decoration: none;
	background-image: url(/img/tab3backgif.gif);
	vertical-align: baseline;
}
ul.tabs4 a:link {
	background-color: #f0f0e7;
	background-repeat: repeat-x;
	padding: 4px;
	border-top: 0px solid #CCCCCC;
	border-right: 1px solid #CCCCCC;
	border-bottom: 0px none #FFFFFF;
	border-left: 1px solid #CCCCCC;
	background-position: left center;
	color: #336699;
	display: inline;
	white-space: pre;
	text-align: center;
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	letter-spacing: normal;
	word-spacing: normal;
	margin: 0px;
	clear: none;
	float: none;
	height: 70px;
	width: auto;
	text-decoration: none;
	background-image: url(/img/tab3backgif.gif);
}
ul.tabs4 a:visited {
	background-color: #F0F0E7;
	background-repeat: repeat;
	padding: 4px;
	border-top: 2px solid #CCCCCC;
	border-right: 1px solid #CCCCCC;
	border-bottom: 2px solid #CCCCCC;
	border-left: 1px solid #CCCCCC;
	background-position: left center;
	color: #336699;
	display: inline;
	white-space: pre;
	text-align: center;
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	letter-spacing: normal;
	word-spacing: normal;
	margin: 0px;
	clear: none;
	float: none;
	height: 60px;
	width: auto;
	text-decoration: none;
	background-image: url(/img/tab3backgif.gif);
	vertical-align: baseline;
	list-style-image: url(back1.gif);
}
ul.tabs4 a:hover {
	background-color: #F0F0E7;
	background-repeat: repeat;
	padding: 4px;
	border-top: 2px solid #CCCCCC;
	border-right: 1px solid #CCCCCC;
	border-bottom: 2px none #FFFFFF;
	border-left: 1px solid #CCCCCC;
	background-position: left center;
	color: #FF9900;
	display: inline;
	white-space: pre;
	text-align: center;
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	letter-spacing: normal;
	word-spacing: normal;
	margin: 0px;
	clear: none;
	float: none;
	height: 70px;
	width: auto;
	text-decoration: none;
	background-image: url(/img/tab3backgif.gif);
}
ul.tabs4 li.tabs4selected {
	background-color: #F0F0E7;
	background-repeat: repeat;
	padding: 4px;
	border-top: 0px solid #CCCCCC;
	border-right: 0px none #FFFFFF;
	border-bottom: 2px solid #CCCCCC;
	border-left: 0px none #FFFFFF;
	background-position: left center;
	color: #FF9900;
	display: inline;
	white-space: pre;
	text-align: center;
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	letter-spacing: normal;
	word-spacing: normal;
	margin: 0px;
	clear: none;
	float: none;
	height: 70px;
	width: auto;
	text-decoration: none;
}
'!

cssTabs5
	^'
ul.tabs5 {
    float:left;
    width:600px;
    background:#DAE0D2 url("/img/tab5bggif.gif") repeat-x bottom;
    font-size:93%;
    line-height:normal;
    text-decoration: none;
    color: #333333;
    margin:0;
    padding:10px 10px 0;
    list-style:none;
    }
ul.tabs5 li {
    float:left;
    background:url("/img/tab5rightgif.gif") no-repeat right top;
    margin:0;
    padding:0 0 0 ;
    }
ul.tabs5 a, ul.tabs5 b {
   display:block;
   background:url("/img/tab5leftgif.gif") no-repeat left top;
   padding:5px 15px 4px 6px;
   text-decoration: none;
   color: #006699;
   font-family: Arial, Helvetica, sans-serif;
   font-weight: bold;
   font-size: 12px;
   }

/* Commented Backslash Hack
   hides rule from IE5-Mac \*/
ul.tabs5 a {float:none;}
/* End IE5-Mac hack */
ul.tabs5 a:hover {
  color:#333;
  }
ul.tabs5 li.tabs5selected {
  background-image:url("/img/tab5rightongif.gif");
  }
ul.tabs5 li.tabs5selected b {
  background-image:url("/img/tab5leftongif.gif");
  padding-bottom:5px;
  color: #666666;
  font-family: Arial, Helvetica, sans-serif;
  }
ul.tabs5 a:hover {
  color: #EFEFE6;
  }
'!

navBarContactElementFor: anObject
	| e |
	e := (WebElement newClass: #navdiv)
		add: (self navHeader: ' Online Help' bullet: #bulletSquareDownTranspWhiteGif);
		add: (self navLinkTo: 'http://www.uml-almighty.com/' header: ('Site') bullet: #bulletStarTranspWhiteGif);
		add: (self navLinkTo: 'mailto:support@uml-almighty.com' header: ('Support') bullet: #bulletLetterTranspWhiteGif);
		add: (self navLinkTo: 'http://www.uml-almighty.com/blog' header: ('Blog') bullet: #bulletPencilTranspWhiteGif);
		add: (self navLinkTo: 'http://www.uml-almighty.com/documentation.html' header: ('Documentation') bullet: #bulletBookTranspWhiteGif);
		add: (self navLinkTo: 'http://groups.google.com/group/uml-almighty/topics' header: ('News group') bullet: #bulletIssueTranspWhiteGif);
		add: (self navLinkTo: 'http://www.umlalmighty.blip.tv/' header: ('Videos') bullet: #bulletGuidesTranspWhiteGif);
		yourself. 
	^e!

navBarObserveeOptionsFor: anObject
	| e editButton viewObjectButton inspectButton |
 
	editButton := UMLRedirectWebButton text: 'Edit Object' action: #edit.
	editButton destinationView: '?view=edit'.
	viewObjectButton := UMLRedirectWebButton text: 'View Object' action: #main.
	viewObjectButton destinationView: '?view=main'.
	inspectButton := UMLActionWebButton text: 'Inspect' action: #inspectObservee.

	e := (WebElement newClass: #navdiv)
		add: (self navHeader: ' Object Options' bullet: #bulletSquareDownTranspWhiteGif);
		add: viewObjectButton;
		addBreak;
		add: editButton;
		addBreak;
		add: inspectButton;
		addBreak; addBreak; addBreak;
		yourself. 
	^e!

navBarRootObjectsOptionsFor: anObject
	| e |

	e := (WebElement newClass: #navdiv)
		add: (self navHeader: ' System Root Objects' bullet: #bulletSquareDownTranspWhiteGif);
		"add: (WebList newUnordered"
			addUMLActionButtonText: 'Show Root' action: #showGlobalObjects;
			addBreak;
			addUMLActionButtonText: 'Save in Root' action: #saveAsGlobalObject;
			addBreak;
			addUMLActionButtonText: 'Remove from Root' action: #removeFromGlobalObject;
			addBreak;
			addBreak;
			"yourself);"
		yourself. 
	^e!

navBarSetupObjectsOptionsFor: anObject
	| e |

	e := (WebElement newClass: #navdiv)
		add: (self navHeader: ' Setup Objects' bullet: #bulletSquareDownTranspWhiteGif);
		"add: (WebList newUnordered"
			addUMLActionButtonText: 'Show Setup' action: #showSetupObjects;
			addBreak;
			addUMLActionButtonText: 'Save in Setup' action: #saveAsParametricObject;
			addBreak;
			addUMLActionButtonText: 'Remove from Setup' action: #removeFromParametricObject;
			addBreak;
			addBreak;
			"yourself);"
		yourself. 
	^e!

navigationBarElement
	| e |
	e := WebElement newId: #navigation.

	e addImage: 'lateralLoginBar.png'.

	^e!

navigationBarElementFor: anObject
	| e |
	e := WebElement newId: #navigation.
	e add: (self navBarObserveeOptionsFor: anObject).
	e add: (self navBarSetupObjectsOptionsFor: anObject).
	e add: (self navBarRootObjectsOptionsFor: anObject).
	e add: (self navBarContactElementFor: anObject).
	^e!

pageFrameWith: aWebElement title: aTitleString observee: anObject
	"set a web page with standard  page look (navigation bar, header) "
	"Wide element comes below content besides navigation and it have full page width"
	| e |

	self app title: aTitleString.
	self htmlHeaderElements.
	self app add: self headerBanner.
	e := (WebElement newId: #container)
		add: self headerElement; 	add: self headerDashboard;
		add: ((WebElement newId: #content) 
			add: (self navigationBarElementFor: anObject); add: aWebElement;  yourself); 
		add: ((WebElement newId: #contentWide) add: WebElement  new; yourself);
		yourself.
	^self app add: e; yourself!

pageFrameWith: aWebElement wide: aWideElement title: aTitleString
	"set a web page with standard  page look (navigation bar, header) "
	"Wide element comes below content besides navigation and it have full page width"
	| e |

	self app title: aTitleString.
	self htmlHeaderElements.
	self app add: self headerBanner.
	e := (WebElement newId: #container)
		add: self headerElement; 	add: self headerDashboard;
		add: ((WebElement newId: #content) 
			add: self navigationBarElement; add: aWebElement;  yourself); 
		add: ((WebElement newId: #contentWide)
			add: aWideElement; yourself);
		yourself.
	^self app add: e; yourself!

titleBackgroundGif

^#[71 73 70 56 57 97 100 0 100 0 247 0 0 229 208 192 232 216 196 228 211 194 226 210 193 222 209 192 221 207 192 234 209 187 227 209 189 226 209 190 225 208 190 231 203 184 228 205 187 225 206 189 225 207 188 225 205 185 224 206 187 224 205 186 225 202 185 224 203 185 229 204 181 225 204 182 225 202 182 225 201 178 225 195 177 224 198 181 225 198 177 230 203 174 226 196 173 224 194 174 207 193 179 218 208 190 222 208 190 219 203 188 221 206 189 223 206 188 218 205 189 222 206 186 222 205 187 221 204 187 222 204 185 218 204 186 222 202 186 220 203 186 222 203 184 221 203 185 220 201 184 217 202 185 218 203 186 218 202 185 218 201 184 215 201 185 218 199 184 214 198 184 220 202 180 222 202 181 222 202 183 221 202 183 222 201 182 220 201 182 222 201 181 221 200 181 218 202 182 219 200 183 217 200 183 219 200 181 222 201 178 215 200 182 221 195 181 221 198 181 222 199 180 220 199 180 217 197 182 219 199 182 216 199 182 218 199 180 217 199 181 218 197 180 217 197 180 217 195 180 222 197 177 222 198 179 221 198 179 220 197 178 220 196 177 217 198 178 219 198 179 218 197 178 217 197 179 218 196 177 216 196 177 221 194 177 220 195 177 218 193 177 216 195 178 218 194 176 217 195 177 212 195 180 214 197 181 215 198 180 214 197 178 214 194 177 215 195 177 210 193 177 220 194 168 219 196 171 221 197 174 218 197 174 222 193 173 220 194 175 220 193 175 218 193 173 218 194 174 216 194 175 218 193 174 217 192 174 217 192 173 221 193 170 218 193 170 211 194 174 214 193 174 215 192 175 214 192 170 224 179 153 225 190 168 217 190 176 210 190 176 214 191 176 206 189 177 216 183 169 219 187 170 221 190 173 217 190 174 218 191 172 216 190 172 221 190 170 217 189 169 218 191 171 217 186 169 211 187 172 214 190 173 215 191 172 210 190 173 214 189 170 210 189 170 214 186 169 210 186 169 211 183 169 220 186 162 221 189 166 217 189 166 221 186 166 217 185 166 217 185 162 213 185 163 214 189 166 214 185 166 210 185 166 221 182 163 217 182 165 217 181 162 217 178 161 211 179 164 213 182 165 210 182 165 214 181 162 210 181 162 213 178 161 210 178 161 198 180 166 204 187 173 206 185 169 204 182 169 206 184 166 204 180 164 206 182 166 205 177 161 202 177 162 211 174 161 196 173 161 204 174 161 215 182 155 219 180 157 217 177 158 213 179 157 213 177 158 210 177 158 198 176 159 205 177 158 211 167 151 217 174 155 212 171 154 213 174 157 210 174 157 213 173 154 210 173 154 209 170 154 218 172 149 212 171 148 213 169 150 210 169 150 210 165 147 210 165 146 197 166 153 203 172 157 206 174 158 206 173 154 205 169 153 202 170 154 197 171 156 203 166 153 205 169 149 204 163 146 205 166 149 202 166 150 196 163 148 213 167 140 210 162 141 198 162 142 204 162 141 193 142 128 198 159 145 210 155 133 210 157 138 198 153 134 203 157 139 196 156 140 195 150 137 203 154 133 202 149 131 196 149 132 190 165 152 189 158 145 187 150 136 189 155 140 189 147 132 185 142 130 203 139 116 198 146 124 203 147 125 198 137 117 196 141 123 196 138 117 183 139 123 182 135 120 189 139 124 188 133 115 186 129 109 194 125 103 152 93 81 174 121 110 184 121 104 181 125 108 170 119 105 180 109 89 170 105 90 164 92 74 44 0 0 0 0 100 0 100 0 0 8 254 0 215 100 136 32 161 130 193 11 134 12 37 10 100 136 210 26 58 130 2 93 98 83 164 130 141 29 59 164 108 193 113 162 4 4 17 9 26 48 96 144 192 1 133 10 79 216 236 192 97 4 73 139 22 62 122 152 96 209 2 137 18 37 84 144 80 217 153 229 13 35 57 162 130 245 2 117 201 16 157 53 136 234 212 65 147 33 205 19 167 105 160 60 121 18 196 32 5 40 81 230 16 50 37 172 20 41 57 105 72 121 106 19 69 202 148 54 90 12 93 178 213 171 150 165 162 148 40 25 210 242 196 130 197 40 20 111 172 56 97 3 194 3 6 13 26 148 56 65 1 3 27 45 21 115 180 192 129 195 135 15 21 42 90 0 81 82 133 199 206 37 89 178 220 41 51 231 16 46 92 15 215 176 97 179 166 142 133 12 65 130 164 153 50 53 195 233 10 118 35 240 144 130 199 17 48 103 163 32 49 74 228 105 24 160 45 91 218 100 96 40 145 237 39 83 159 38 33 162 227 20 202 142 28 91 216 72 209 1 97 239 138 191 13 68 156 128 32 1 195 26 41 81 244 254 226 144 92 131 202 120 32 98 176 236 92 207 179 12 28 71 164 68 45 159 226 60 8 213 29 105 84 59 173 107 225 137 193 34 60 84 241 222 38 205 48 3 201 34 124 8 50 72 46 167 20 34 200 37 150 172 97 136 32 109 60 104 11 50 190 116 114 8 33 192 85 80 68 17 83 72 33 69 14 57 156 176 66 95 39 60 48 216 9 57 20 65 200 20 57 240 128 3 16 58 232 64 25 21 77 40 129 5 28 140 228 113 7 28 153 101 97 133 102 142 100 146 9 33 15 21 33 129 4 82 156 84 1 6 22 244 151 134 5 24 96 84 68 20 85 148 177 136 35 145 48 179 201 34 120 112 161 5 23 144 12 35 140 39 160 88 114 1 7 90 64 145 22 41 200 36 19 204 39 155 4 194 134 27 26 85 162 9 27 81 212 192 67 20 65 232 144 195 13 56 232 240 167 27 136 196 81 86 21 86 84 177 30 28 63 206 225 200 38 142 44 2 135 26 111 168 1 41 35 135 144 146 201 28 157 97 64 129 13 81 224 112 195 14 246 77 149 223 14 43 16 97 4 22 255 93 44 18 73 36 144 140 242 8 25 126 116 65 4 36 144 132 50 205 52 160 8 130 65 4 57 84 48 155 39 184 216 162 44 46 159 28 114 201 33 149 96 178 225 20 70 164 145 134 20 70 236 80 163 14 70 72 17 7 33 124 90 33 197 28 144 222 225 19 35 142 104 162 73 33 120 48 194 8 28 120 188 193 163 35 135 148 146 9 34 210 165 17 5 169 18 12 154 131 84 65 68 193 131 182 64 88 241 69 35 143 68 194 74 36 156 52 130 135 31 124 240 17 138 41 195 96 163 205 56 184 100 80 81 4 16 96 16 136 179 129 128 242 137 37 148 96 98 50 46 164 108 248 134 27 110 192 33 5 128 88 68 225 5 28 157 109 97 132 17 85 100 145 135 38 156 100 194 9 173 163 100 82 233 34 143 220 225 72 30 239 65 34 74 46 153 28 226 133 20 2 238 208 66 14 70 176 200 198 22 79 20 97 68 128 6 227 65 134 42 172 132 29 137 34 145 56 50 138 40 160 244 66 202 38 164 36 131 12 32 11 84 176 66 3 20 184 161 5 33 135 76 82 75 45 254 152 76 130 201 37 148 28 34 237 33 153 228 193 178 20 84 72 177 178 27 94 204 193 134 17 64 20 156 69 145 165 56 83 77 53 175 240 234 72 109 232 22 146 174 87 164 12 174 6 21 88 188 193 70 26 149 153 245 6 212 56 99 17 135 35 176 63 194 201 207 99 187 34 138 48 189 36 66 72 27 82 240 65 177 45 6 65 192 67 14 82 176 209 70 32 129 76 98 156 201 135 80 82 73 37 183 144 226 105 37 44 187 97 188 23 110 20 194 6 181 64 100 129 7 36 155 148 50 77 56 229 84 211 76 53 204 140 162 190 40 155 108 34 202 41 12 166 204 200 27 153 206 81 72 37 113 228 255 134 23 91 72 129 197 204 176 131 4 39 136 198 48 69 40 77 20 164 72 68 20 140 64 16 34 240 129 89 134 168 210 203 174 116 150 53 80 98 45 182 184 197 39 158 151 9 147 85 2 90 135 208 196 40 56 81 8 80 17 2 18 114 16 82 23 240 48 135 82 148 66 26 217 16 71 54 152 225 12 110 136 35 28 211 160 134 51 114 17 138 92 228 2 24 167 254 16 197 33 28 81 7 55 204 129 126 140 248 86 34 16 193 50 77 197 65 82 142 160 93 36 212 151 27 71 144 225 10 62 104 129 10 82 240 0 22 48 1 16 212 0 6 34 156 16 133 28 84 65 35 91 136 3 34 180 144 136 91 4 227 51 161 104 223 243 192 69 191 74 113 226 21 11 27 197 34 238 80 155 90 85 35 28 225 200 134 54 156 193 140 103 252 113 27 218 208 198 52 190 1 142 112 36 131 144 203 56 69 110 20 161 149 56 192 65 14 139 224 153 35 238 144 5 56 192 203 17 138 80 4 43 36 161 62 72 40 194 15 75 120 12 3 74 144 130 18 120 4 3 24 32 133 48 112 193 161 45 84 97 10 163 113 132 28 38 85 138 99 36 67 24 162 200 132 38 14 81 68 35 126 225 14 119 216 146 35 94 97 141 87 148 98 20 203 120 198 46 156 145 141 112 52 195 25 203 136 166 53 232 65 142 100 72 99 24 183 209 70 59 182 113 67 66 6 113 19 135 72 132 35 192 151 137 82 208 10 76 139 88 68 35 34 161 10 85 60 83 17 141 32 255 67 19 90 160 3 22 176 160 1 8 64 0 3 32 16 129 8 4 226 23 199 56 4 23 182 240 133 45 168 161 14 135 80 230 40 152 209 140 99 228 194 94 154 168 3 253 90 246 5 44 116 50 153 188 58 5 13 171 225 140 105 216 48 26 209 124 134 50 194 65 143 114 132 241 20 192 0 134 48 162 105 67 113 124 163 28 211 216 33 41 126 200 140 87 188 194 21 156 120 132 34 18 182 8 85 180 162 21 165 80 133 29 236 144 133 37 168 96 59 41 64 128 0 6 48 0 6 164 64 2 113 120 223 39 158 6 135 56 120 203 17 158 227 68 41 118 193 12 97 236 48 19 31 156 159 26 176 128 5 1 89 129 12 181 1 171 35 198 90 13 117 136 99 29 233 80 134 53 184 17 14 113 208 131 30 212 240 69 44 98 49 140 2 237 66 165 124 85 199 58 242 17 142 106 24 210 26 204 128 70 43 24 54 171 89 177 162 21 175 24 69 35 26 113 7 32 248 224 4 42 16 1 3 168 58 128 15 36 224 1 18 208 194 32 18 65 10 67 112 129 11 94 176 130 37 254 141 38 86 159 150 162 25 194 200 5 165 8 1 7 44 136 136 7 88 104 194 21 146 233 53 44 224 161 16 146 104 134 53 230 145 143 121 56 183 28 242 144 199 62 180 49 12 103 68 99 24 207 128 134 118 117 1 13 101 120 247 28 234 216 199 54 214 33 142 105 60 227 167 163 96 133 250 212 59 10 73 144 129 12 125 32 67 25 148 224 3 19 20 32 1 163 21 40 3 86 112 131 34 72 65 11 129 240 68 34 226 48 5 44 172 21 82 178 107 197 40 92 120 138 83 220 66 152 115 80 131 20 82 83 5 202 96 129 17 153 193 66 60 35 81 138 101 88 99 29 244 216 71 62 246 65 98 127 108 35 135 132 132 134 46 116 1 11 22 183 152 187 221 181 6 58 230 97 211 105 48 163 20 62 109 133 122 35 209 8 51 152 1 12 73 184 2 21 198 160 132 208 146 160 4 12 144 0 9 184 195 157 28 104 225 18 158 40 196 20 188 128 5 43 32 51 97 149 157 29 39 70 177 137 97 230 65 194 136 211 17 143 202 48 6 205 52 226 178 203 88 169 56 252 254 74 226 124 248 67 29 220 168 198 41 90 161 11 89 160 98 21 119 70 133 158 245 172 93 107 156 195 26 226 80 71 54 162 185 12 102 76 182 17 118 32 131 25 198 32 6 49 148 57 11 84 104 193 146 31 208 17 208 150 224 1 68 224 194 37 212 230 52 156 229 129 12 70 123 132 168 17 253 136 117 42 205 17 136 144 151 23 220 117 180 59 188 119 179 145 104 197 50 160 81 13 110 140 47 186 249 224 199 60 212 161 140 163 182 98 21 192 78 133 25 86 145 138 63 164 98 21 43 134 198 50 116 177 140 106 100 99 27 233 112 44 43 26 17 223 62 216 193 12 97 16 195 78 190 208 4 28 136 64 4 37 16 129 9 74 144 128 22 164 128 7 113 240 4 49 122 49 136 56 168 103 39 201 204 131 29 238 96 6 50 140 193 213 156 186 4 38 42 209 101 83 111 14 212 118 152 21 44 102 145 205 104 124 120 30 34 78 199 57 248 186 12 88 192 34 21 16 23 246 31 204 208 1 99 195 2 21 176 104 133 81 101 253 140 53 55 83 21 141 24 170 189 195 32 255 4 21 244 224 7 159 13 193 7 76 48 238 18 176 0 7 72 168 130 23 32 129 139 94 4 2 15 93 80 66 19 220 115 7 59 140 193 222 63 255 121 22 190 32 41 72 184 48 19 2 124 196 34 200 176 89 176 189 130 25 204 208 43 58 22 235 143 117 152 163 207 220 224 70 175 139 253 135 63 116 0 12 21 79 197 157 127 189 10 176 101 179 167 203 224 134 52 85 225 7 48 132 33 12 50 8 65 8 94 128 2 113 203 221 4 40 48 65 100 108 212 5 71 32 240 19 109 0 2 19 148 144 153 121 143 225 240 136 135 244 21 176 240 5 116 49 108 203 155 141 60 61 153 225 225 115 164 3 29 242 200 71 62 206 1 13 61 203 66 25 220 80 7 230 64 110 134 62 128 1 12 102 0 91 61 193 198 10 87 204 66 227 145 120 5 44 84 10 139 83 98 219 5 46 64 129 11 84 240 130 222 187 224 5 33 0 1 100 96 114 133 66 44 98 16 168 158 67 22 132 156 153 195 47 218 209 98 184 73 11 106 0 4 42 220 1 97 91 86 5 62 69 173 222 219 254 88 254 242 235 112 238 57 236 76 236 85 180 226 25 214 0 7 48 94 161 136 62 248 184 15 97 99 5 216 182 92 138 133 205 202 21 176 128 134 53 172 241 112 59 132 193 5 32 128 123 47 48 2 191 135 2 192 87 2 43 192 3 74 64 116 133 32 7 13 136 64 132 112 7 59 82 6 156 68 6 84 208 104 98 208 3 49 224 3 64 192 40 20 40 43 180 147 48 156 32 82 195 80 13 231 144 13 150 55 117 235 160 12 118 86 108 143 0 54 173 112 10 191 2 12 173 160 8 68 147 94 143 55 59 163 16 9 47 216 10 176 160 87 214 64 103 186 160 10 166 39 3 50 64 3 52 224 2 48 160 2 48 208 132 27 248 63 110 16 7 217 131 78 108 227 9 148 18 79 239 133 120 140 214 3 61 240 114 1 146 5 100 64 52 245 196 10 156 224 10 175 208 108 181 246 103 251 119 14 235 176 130 45 8 113 245 20 9 102 216 12 211 144 13 206 16 10 146 192 43 188 50 66 155 32 64 173 112 99 234 243 10 173 208 8 96 195 99 167 39 4 50 0 3 255 40 32 3 66 112 2 61 160 109 84 240 6 192 225 5 154 224 46 114 128 7 155 16 61 142 160 116 137 118 122 110 135 4 142 193 18 140 178 35 91 194 9 97 243 10 187 176 108 207 160 82 231 224 93 221 149 14 243 144 14 157 23 113 170 64 59 234 197 12 213 0 14 218 0 12 113 4 62 162 32 10 181 210 12 121 160 8 120 176 116 239 229 118 97 192 104 66 128 132 70 200 136 73 16 3 58 64 5 94 96 4 76 160 25 89 0 4 75 208 5 184 194 5 135 240 9 146 48 54 215 134 122 96 96 111 98 144 4 58 242 5 139 115 8 125 120 138 46 214 112 220 213 112 249 7 13 220 48 15 230 144 113 171 167 10 145 32 9 146 224 10 49 8 68 199 48 13 199 64 13 195 192 67 185 64 10 109 224 4 57 119 5 98 16 6 73 144 4 140 136 136 136 56 2 35 176 136 66 32 6 66 208 4 89 224 5 84 176 4 66 128 114 63 0 3 207 24 6 93 192 5 130 96 10 163 176 137 139 144 5 62 102 111 96 160 109 144 182 5 107 128 55 144 176 78 255 166 168 10 230 231 98 190 230 131 159 151 14 235 0 13 176 224 10 242 87 89 10 195 9 237 35 9 161 0 12 199 160 139 224 148 8 114 80 97 71 208 2 63 16 3 46 32 4 112 39 4 86 73 114 35 32 3 46 32 3 201 248 115 234 161 4 138 248 3 63 192 136 46 32 150 71 208 5 144 96 11 184 80 10 125 232 35 118 80 6 100 208 146 142 182 4 210 200 6 132 128 8 67 52 84 16 183 10 176 96 147 101 87 79 178 167 12 231 64 15 219 176 12 173 224 10 99 195 99 248 136 135 163 16 11 204 112 12 218 96 81 148 178 5 93 224 3 77 184 132 82 137 136 71 200 149 112 247 2 83 41 6 140 128 76 135 215 3 62 144 123 120 7 3 89 180 132 45 192 4 155 224 11 201 224 11 191 64 10 7 178 25 136 247 94 73 208 4 86 224 5 166 227 5 61 71 109 125 144 10 58 86 89 245 52 10 167 240 12 225 80 15 245 240 13 192 208 94 11 131 138 101 5 12 195 128 12 216 144 12 182 160 59 94 48 120 62 16 3 218 249 140 61 144 4 255 63 64 149 158 232 118 139 102 7 159 214 146 111 39 6 158 249 2 32 240 2 66 128 123 40 64 128 46 128 7 190 128 12 197 16 12 72 183 8 137 198 104 111 71 149 73 64 5 113 208 63 142 114 7 238 103 108 248 72 54 10 99 134 204 96 13 229 160 14 219 48 15 220 48 103 173 48 77 217 192 72 138 20 83 178 233 5 100 144 5 77 240 3 73 0 3 98 64 6 98 208 5 218 168 104 102 32 43 60 24 9 121 0 38 89 224 118 15 41 3 99 169 132 138 8 2 33 48 2 32 48 2 47 224 4 190 112 12 191 128 11 125 104 69 100 134 120 22 249 3 84 0 7 33 130 51 218 232 99 169 160 125 12 67 156 20 21 13 44 213 87 219 80 152 4 247 12 220 208 14 227 176 67 113 4 140 140 192 5 95 192 5 112 32 162 43 116 73 176 131 46 176 19 79 244 182 84 100 208 5 98 32 3 32 0 2 70 88 150 191 231 158 30 224 1 52 106 163 77 32 10 195 128 11 2 86 8 25 154 5 142 230 167 28 201 161 46 83 5 65 96 5 63 135 122 255 141 96 43 172 32 73 167 64 49 213 80 14 226 176 127 199 89 13 209 4 14 223 128 12 178 89 41 238 194 8 95 192 4 184 121 5 65 146 5 108 5 41 120 240 165 73 0 6 99 128 140 97 240 157 66 0 3 90 217 140 47 96 132 47 170 158 18 73 128 103 89 9 129 144 8 133 208 169 77 208 144 49 176 4 73 80 145 63 128 25 21 102 4 58 240 115 76 23 9 146 84 43 175 208 67 194 48 13 229 16 103 128 86 15 127 244 13 195 16 10 137 48 7 92 224 61 153 145 35 45 32 4 75 16 3 93 64 5 230 232 3 63 80 150 63 64 3 15 25 3 86 217 140 140 248 166 184 103 132 236 217 145 231 58 145 32 96 128 49 128 4 113 96 8 107 208 6 83 224 89 49 112 114 98 137 123 191 74 6 86 176 53 70 96 102 177 198 9 245 164 8 196 153 11 212 132 83 6 23 14 246 80 14 224 192 163 42 138 145 95 176 124 77 176 4 75 40 150 66 16 3 47 208 132 42 96 128 91 57 150 240 218 140 40 123 174 50 224 153 236 90 150 158 137 2 255 53 218 166 32 96 2 48 160 3 80 144 1 24 0 5 68 240 18 48 32 150 48 176 158 63 43 36 86 160 128 154 209 131 175 160 10 250 8 63 205 64 13 226 80 14 209 16 13 220 176 13 245 64 13 242 195 5 77 224 24 74 48 25 160 24 3 77 200 161 218 201 114 50 74 167 6 136 136 47 32 178 83 201 158 49 128 178 140 168 157 243 202 144 74 24 3 193 199 132 184 167 2 44 16 37 69 16 4 48 129 4 77 144 175 207 232 24 67 7 7 56 113 180 70 149 62 234 131 99 134 180 13 229 240 13 12 74 14 199 0 9 133 192 5 87 240 140 98 185 4 74 208 2 49 160 2 32 192 133 195 170 136 114 87 163 31 48 145 45 251 170 91 201 136 11 73 3 86 121 174 39 199 174 29 41 178 50 107 179 184 87 114 48 16 2 55 224 31 80 16 91 94 80 8 132 80 7 85 32 25 234 145 97 57 115 7 10 19 161 64 201 143 148 55 143 246 48 15 229 16 71 142 224 7 77 112 4 73 224 3 189 167 2 49 64 95 143 225 181 62 11 3 35 80 0 255 42 39 119 115 231 2 234 74 114 86 41 4 99 240 118 40 144 4 22 9 3 46 160 157 61 80 2 114 39 2 78 248 3 61 176 4 63 144 35 195 195 3 25 0 5 132 224 6 117 80 9 251 171 6 33 34 5 86 96 5 59 146 25 178 210 122 63 9 54 3 87 87 187 246 160 7 66 6 97 0 3 110 187 158 76 104 19 71 224 24 152 107 153 40 208 189 4 16 124 51 106 132 168 55 6 224 137 109 226 123 174 151 217 2 138 104 2 114 87 2 61 0 4 107 171 35 153 1 4 227 33 5 6 241 6 132 176 191 110 240 4 34 18 5 4 12 106 121 192 8 143 112 89 173 240 122 71 53 123 220 176 15 232 208 76 186 129 7 222 41 149 0 72 163 38 151 51 84 0 4 60 16 57 74 32 163 114 183 193 40 160 2 38 48 149 158 248 99 167 103 111 228 59 190 33 203 197 120 135 2 90 204 133 61 32 4 84 128 6 111 64 5 31 201 129 82 16 1 80 208 175 210 17 5 120 92 22 88 112 101 92 2 77 221 229 112 103 200 13 252 176 14 214 176 12 255 122 132 115 222 137 123 52 10 124 48 128 4 88 224 8 113 80 5 21 70 95 42 80 2 27 220 189 35 43 3 168 231 99 102 176 84 99 176 104 201 72 6 222 73 154 218 169 2 114 71 2 144 129 3 145 1 4 143 140 6 85 240 183 74 176 3 253 33 33 79 128 1 31 162 53 76 144 155 100 90 43 81 23 14 208 48 11 84 90 15 243 112 14 231 229 8 140 112 5 17 28 3 247 234 189 38 192 79 59 192 50 89 32 125 62 192 2 174 164 119 36 64 2 33 176 182 21 121 122 156 108 7 136 54 111 140 176 30 56 145 69 79 37 2 211 140 3 148 214 3 121 144 7 126 234 157 73 144 5 60 240 4 116 144 1 244 156 1 181 12 5 82 64 4 82 224 5 94 240 58 235 116 134 225 192 13 214 16 14 251 96 15 121 245 10 145 176 8 126 208 144 180 58 2 193 199 2 38 178 2 69 240 58 95 64 5 74 192 2 38 176 2 223 54 24 43 240 114 244 117 5 16 188 201 100 224 205 200 20 154 84 208 19 84 160 6 235 44 35 58 208 2 43 96 2 255 39 192 2 61 96 68 84 160 157 63 112 4 148 33 5 18 162 0 22 176 1 181 44 34 68 192 3 179 97 5 197 24 107 203 240 13 55 181 15 243 64 200 179 144 84 245 102 145 0 8 124 33 240 84 38 114 2 56 48 115 75 119 185 38 144 2 224 38 2 215 28 25 133 82 5 174 6 106 75 119 7 165 198 8 228 114 210 106 48 7 235 92 10 152 240 198 244 37 193 45 96 5 154 224 8 147 27 3 13 137 7 114 48 7 136 64 9 123 160 0 27 192 38 47 115 3 230 134 155 92 224 7 28 70 13 241 80 15 250 48 15 127 21 14 204 64 10 156 112 7 96 208 5 99 25 180 119 103 2 220 65 19 77 0 38 120 48 3 72 128 206 42 242 1 166 245 0 218 193 2 145 209 4 247 246 94 160 198 73 119 208 4 57 66 151 76 64 51 104 205 8 101 240 24 63 235 73 95 42 6 63 32 146 140 0 9 135 128 8 137 64 9 22 64 7 252 90 22 122 33 1 70 192 5 114 208 43 192 48 13 250 80 15 234 16 208 225 0 14 205 96 10 15 140 69 255 144 161 194 239 219 0 160 165 2 76 128 7 56 231 18 41 112 2 12 240 0 15 128 0 223 166 34 42 140 185 232 75 114 63 208 173 176 237 3 75 48 3 213 123 5 82 208 91 88 64 25 74 96 185 42 141 115 71 80 111 158 115 8 249 83 8 16 50 9 123 96 8 28 0 5 21 144 3 24 112 55 129 64 10 192 240 13 237 128 83 206 208 12 134 164 126 162 160 75 112 80 70 123 241 23 31 48 18 167 229 114 57 176 66 93 128 4 16 45 1 35 145 34 127 33 226 32 193 2 62 208 161 146 49 184 55 129 4 27 136 4 153 65 5 67 210 84 77 0 41 20 200 37 248 100 131 241 36 7 68 94 8 162 80 20 150 176 7 23 160 5 24 32 5 109 64 8 158 16 12 237 240 13 212 32 12 166 32 73 161 208 108 224 96 32 139 240 5 3 108 4 140 33 2 114 103 90 164 189 74 171 121 5 93 112 2 41 176 100 151 150 222 36 241 0 71 166 114 37 160 157 114 221 3 24 217 177 253 125 4 150 219 4 58 190 124 239 21 79 176 83 64 237 23 151 255 93 144 25 86 208 220 35 19 8 152 96 9 130 176 6 130 176 9 191 144 12 151 26 68 2 150 8 144 32 9 167 16 13 187 184 116 112 112 176 58 96 105 33 48 0 4 64 0 31 80 90 34 160 2 146 92 95 16 64 2 127 225 0 232 157 29 232 29 110 37 0 25 76 8 19 43 96 4 55 81 5 62 96 19 176 221 91 120 112 7 140 176 37 158 195 43 54 24 151 111 39 150 59 62 7 144 64 10 198 208 11 190 16 12 164 0 10 199 48 157 198 240 9 151 192 43 132 224 128 33 21 13 224 64 13 96 226 229 2 227 210 72 54 0 9 80 238 165 181 95 81 64 4 55 192 2 15 208 0 15 176 0 14 16 239 237 14 1 244 126 100 71 6 4 86 173 3 29 184 53 85 6 47 52 99 124 51 185 57 237 130 115 239 133 109 234 106 132 66 16 100 100 0 7 203 30 12 193 48 14 228 48 14 245 0 14 111 180 9 186 122 8 133 224 5 120 16 7 133 112 8 208 4 14 224 0 9 27 79 164 101 212 17 9 64 238 229 94 238 15 176 2 34 114 3 255 14 32 1 148 70 239 237 30 18 238 238 238 174 164 2 70 208 2 247 235 63 86 0 42 133 160 9 122 184 9 13 216 5 147 235 2 77 64 149 155 185 149 52 240 2 239 28 79 139 0 9 177 176 72 33 86 15 221 224 11 182 224 9 144 219 6 109 48 7 249 19 7 92 192 7 138 16 10 205 160 13 212 48 147 94 21 5 69 176 2 225 86 238 34 224 23 148 166 3 83 16 5 21 32 1 129 145 34 111 14 1 219 113 100 15 128 247 139 193 79 60 32 46 253 28 64 77 131 241 25 111 5 29 186 158 47 234 174 168 91 191 15 163 8 174 240 12 234 48 15 254 96 15 199 128 38 66 65 10 176 19 28 82 184 5 76 112 4 157 141 233 99 63 12 166 32 8 253 19 5 48 255 23 9 128 0 7 0 24 15 144 3 59 80 1 174 142 250 178 143 222 34 128 222 244 206 247 62 160 3 85 96 4 52 147 85 210 115 9 148 66 46 87 64 95 94 43 3 82 105 132 72 184 159 158 255 244 167 80 13 246 160 15 253 208 14 212 25 17 160 128 13 9 148 241 254 113 32 29 68 0 138 74 208 5 124 176 8 162 128 148 218 112 9 47 66 4 215 209 226 35 33 80 194 83 70 14 208 0 9 112 0 239 143 0 9 224 23 176 78 105 39 128 202 62 48 3 130 183 66 190 8 86 114 0 16 111 164 96 193 66 165 74 18 31 48 124 8 161 33 132 33 24 48 100 200 224 89 20 138 26 61 127 246 226 77 35 5 202 214 37 55 129 142 253 186 84 232 11 156 42 85 116 168 128 113 228 72 19 46 131 68 53 155 134 13 36 148 8 15 32 60 96 208 147 65 2 8 60 118 156 128 224 224 0 130 6 13 30 60 72 170 148 4 137 21 39 86 248 0 98 165 139 31 72 162 180 226 33 211 164 75 22 56 86 172 124 161 162 68 137 143 48 97 32 154 233 243 72 149 171 81 185 134 129 107 103 175 30 184 96 184 62 121 250 244 137 208 160 83 224 76 65 130 3 167 137 15 31 42 84 196 248 225 146 139 163 83 199 176 5 251 212 102 199 141 19 12 120 238 100 32 97 10 5 9 156 17 28 80 138 64 243 82 8 44 112 240 168 130 254 197 139 28 71 142 22 113 37 3 38 201 145 36 102 91 123 225 226 229 202 149 46 100 252 40 146 244 138 217 52 117 229 192 97 51 86 11 84 48 91 125 49 93 10 132 201 18 34 81 216 124 137 154 221 69 73 11 197 42 16 51 193 50 40 17 169 95 199 124 93 146 130 193 65 4 7 69 37 56 88 81 164 2 133 7 9 68 36 72 192 180 65 137 18 24 104 64 42 32 140 192 98 11 47 176 144 136 140 180 106 11 163 139 35 8 250 162 141 54 4 137 131 16 71 70 9 37 23 96 196 161 167 158 122 246 33 39 152 78 44 41 49 17 65 42 12 196 16 66 12 241 228 144 77 112 41 6 23 71 228 144 34 135 22 192 131 161 133 25 124 128 66 139 65 100 194 37 152 99 60 105 67 11 34 34 80 82 201 10 48 80 82 179 18 26 216 105 5 8 18 40 225 132 27 86 224 129 135 40 136 112 130 11 57 22 241 195 143 218 192 48 195 12 48 252 192 67 142 65 214 48 228 18 82 112 241 37 153 118 224 137 7 28 103 168 169 71 31 100 12 177 196 144 54 255 228 240 98 11 41 164 112 99 138 45 180 48 36 145 66 54 249 197 24 81 220 136 2 7 31 88 72 172 133 19 196 99 226 75 46 18 1 4 23 94 146 177 229 2 12 42 136 96 133 27 42 88 64 2 9 150 2 240 132 19 30 32 225 129 43 185 52 130 9 60 24 41 196 145 172 54 97 48 162 62 26 89 68 145 66 18 73 36 152 100 176 89 46 25 100 112 73 4 146 81 78 153 198 158 113 2 89 99 11 34 128 104 2 9 29 116 192 161 80 34 160 152 2 145 64 10 185 100 143 90 8 41 226 134 22 32 136 106 133 7 76 96 129 199 91 185 40 214 147 94 146 249 132 84 10 42 240 119 213 157 30 96 21 51 8 32 104 33 133 21 140 208 34 14 99 77 33 197 19 79 2 113 164 16 138 22 57 5 152 95 134 153 102 28 108 142 49 38 24 82 46 208 130 141 66 10 129 100 19 96 202 33 71 20 46 152 56 34 134 22 206 202 209 135 42 164 96 205 137 65 48 73 100 147 67 40 9 36 130 27 124 64 98 5 22 72 40 193 132 153 91 64 226 75 62 254 18 193 55 153 75 180 40 213 212 37 111 200 33 2 12 214 109 33 7 34 136 216 98 144 64 72 9 38 47 81 46 185 132 47 92 112 1 198 148 99 164 65 134 156 122 140 33 37 17 55 188 232 162 9 38 174 192 3 143 66 70 169 6 156 92 28 97 240 135 23 146 16 66 140 31 16 34 72 138 44 148 192 227 16 75 54 41 5 19 96 34 224 1 137 35 20 51 225 104 240 84 176 20 137 33 152 224 130 16 83 124 89 239 9 40 48 192 32 7 84 111 136 162 136 34 166 136 98 11 46 236 245 196 151 201 72 33 101 19 71 60 1 197 247 95 124 57 6 25 106 166 209 166 157 96 2 113 131 144 47 186 192 252 135 171 252 144 132 25 113 194 113 4 142 43 124 248 65 134 196 197 240 94 9 56 190 176 130 140 46 228 216 164 144 67 60 17 197 22 79 166 128 176 71 21 94 8 207 243 22 116 64 2 138 152 2 241 132 50 14 180 128 162 8 34 32 193 8 86 40 68 76 14 17 136 75 224 226 23 161 234 133 37 18 17 136 64 108 34 20 184 32 69 40 254 130 103 12 226 69 67 27 224 0 197 33 8 209 5 196 252 224 7 46 72 66 24 200 16 137 86 84 67 28 192 144 141 247 92 32 3 33 132 65 12 99 232 2 30 242 16 155 69 44 2 18 133 224 141 201 128 129 139 75 44 226 110 77 136 65 12 96 16 30 31 40 205 7 82 208 2 31 6 1 136 97 252 34 16 130 96 131 22 164 64 4 216 136 2 18 158 64 134 49 48 104 12 103 17 162 13 23 42 68 40 128 113 10 82 8 3 27 227 24 199 52 170 161 141 113 224 194 16 107 80 137 8 84 96 2 21 184 32 12 99 88 68 36 152 177 141 97 64 130 43 98 112 136 67 198 48 134 59 60 2 18 154 24 197 40 56 49 138 77 200 225 11 115 112 4 39 66 177 9 75 224 34 18 139 224 130 204 84 144 35 29 84 193 8 60 216 194 22 226 80 8 64 8 3 25 17 67 145 32 194 70 10 106 128 195 27 147 249 72 32 14 225 134 54 176 33 14 136 200 132 195 168 145 158 99 92 3 27 228 0 199 56 94 52 5 43 40 65 5 32 0 65 8 66 254 96 130 31 128 97 17 146 168 198 55 74 113 62 56 44 193 33 96 120 144 29 28 17 9 78 148 226 21 187 40 5 36 41 246 136 72 140 66 18 138 216 194 39 40 88 136 46 44 1 49 71 248 13 28 182 0 135 57 204 97 16 197 2 198 52 40 163 64 92 36 99 28 224 152 198 47 76 113 137 67 20 194 13 91 104 3 161 164 112 136 7 18 34 17 184 80 223 38 124 103 140 110 172 129 13 91 192 130 18 76 240 1 103 66 0 143 45 224 155 40 244 244 162 57 240 192 7 140 161 66 23 238 192 8 77 68 34 19 165 56 197 43 32 41 155 62 70 2 46 146 232 157 41 112 145 139 69 92 225 8 84 176 130 23 8 65 136 56 128 45 16 59 243 233 198 144 145 140 100 104 35 47 166 48 69 34 200 213 6 44 12 65 10 81 136 130 20 228 112 8 234 152 235 168 132 64 224 217 8 17 64 36 32 198 4 32 192 35 11 36 192 2 36 224 1 50 244 128 199 37 144 26 5 32 200 179 165 112 224 21 39 102 154 139 83 148 130 19 144 136 132 42 84 193 255 138 86 188 194 56 192 56 35 46 132 17 9 225 220 193 17 102 51 150 239 64 129 139 99 28 99 26 224 72 134 48 128 33 12 52 110 226 124 140 128 67 23 84 130 132 42 88 129 13 115 0 235 82 61 49 136 45 16 2 18 198 114 3 19 152 0 4 101 46 51 4 56 48 129 9 78 144 2 37 48 2 18 206 168 71 50 44 177 134 39 228 192 8 75 160 66 25 196 0 7 70 56 98 19 153 200 69 41 172 203 137 77 176 34 18 172 128 197 43 172 193 141 104 84 35 27 213 112 134 102 95 113 50 82 252 48 61 200 24 199 59 176 1 140 92 228 66 20 187 131 68 57 57 241 136 59 224 225 14 89 32 3 110 146 64 5 32 72 97 10 132 0 43 196 8 49 5 14 92 162 18 135 240 130 21 116 144 163 205 57 51 4 32 85 129 18 176 144 21 112 104 163 22 148 224 64 6 160 192 3 32 84 129 191 114 133 196 217 110 81 206 114 18 150 19 175 120 134 135 232 81 142 114 208 131 30 219 40 199 55 202 49 141 205 14 20 28 224 160 6 53 128 177 9 72 254 236 112 14 133 152 67 116 35 161 136 28 46 130 12 101 72 194 15 90 128 152 22 0 33 10 184 68 68 34 16 74 161 67 8 2 17 68 224 65 14 88 80 130 16 136 32 4 40 8 115 9 62 217 132 69 140 34 28 218 192 132 33 56 240 132 39 68 161 158 139 136 174 69 113 65 211 87 4 182 145 187 168 70 59 234 17 143 23 127 163 152 3 221 236 55 124 76 213 83 92 82 18 144 192 33 30 186 16 156 189 45 226 17 194 242 195 34 236 32 134 36 164 21 49 86 136 45 34 46 129 8 80 211 33 14 113 208 232 235 38 85 130 15 136 224 1 34 216 207 170 91 128 230 81 108 182 22 123 232 112 26 220 48 7 50 192 65 14 115 128 4 38 110 1 223 101 60 131 26 205 248 236 49 188 177 99 105 12 195 179 194 224 69 48 78 129 70 103 152 66 20 135 224 21 163 115 184 171 189 145 33 11 89 184 3 28 202 192 8 75 219 33 15 118 24 131 89 116 96 22 35 120 161 18 149 72 4 27 90 180 134 56 104 33 13 79 40 130 20 108 176 2 6 176 255 26 64 31 56 154 10 150 64 134 70 140 130 27 240 192 5 135 57 224 6 70 135 233 155 113 50 29 142 203 209 14 109 64 85 59 128 13 69 41 180 184 9 83 128 2 200 146 16 69 46 24 93 136 93 131 59 200 19 99 196 29 186 77 90 50 152 188 17 43 191 131 247 142 32 6 179 40 193 10 160 38 4 27 16 113 136 56 76 193 221 108 144 66 17 130 112 3 28 192 234 153 37 16 65 9 94 189 8 87 60 163 28 227 248 196 37 12 97 136 172 144 162 145 207 150 198 26 219 81 142 112 68 123 19 162 176 184 104 25 253 113 94 233 46 17 188 42 133 199 185 48 234 33 163 239 16 135 208 68 108 220 126 7 50 216 65 238 147 134 200 24 194 80 150 42 48 225 11 132 112 3 168 41 113 8 80 87 194 16 90 240 57 15 30 92 2 213 172 0 7 150 234 2 36 94 49 112 188 120 194 68 98 75 70 134 201 49 80 54 242 152 25 234 148 141 34 34 129 195 69 20 98 54 177 217 196 238 22 93 10 144 129 124 172 187 172 3 181 219 30 155 73 43 89 238 254 43 71 19 24 174 64 133 30 200 156 9 94 64 68 27 220 180 118 200 173 65 11 93 221 193 14 238 221 2 160 243 128 60 68 30 197 142 177 129 12 83 244 197 24 224 96 199 44 201 65 142 107 24 67 24 205 40 133 118 147 28 228 145 31 194 218 37 131 83 48 126 17 188 100 172 39 16 53 223 40 27 188 80 50 71 80 251 243 247 181 244 202 27 113 38 50 48 129 203 136 169 194 22 216 240 116 67 160 132 74 160 4 75 160 3 14 136 2 56 43 130 39 184 145 45 112 131 56 120 3 70 240 3 46 16 5 30 67 6 237 0 134 99 32 135 119 112 7 108 80 150 100 0 25 227 208 169 207 11 178 210 211 157 76 128 147 91 56 65 223 33 6 98 232 133 79 184 172 105 192 5 6 51 37 54 112 131 58 32 176 70 209 161 104 225 132 72 216 46 85 120 132 71 80 132 235 65 38 38 80 130 42 224 129 41 168 3 67 184 57 74 192 132 73 64 4 53 120 130 32 176 129 32 128 2 27 200 129 6 228 187 56 112 131 243 32 40 112 184 60 108 240 6 142 255 49 6 95 0 6 101 51 133 103 115 133 30 148 13 93 217 21 181 187 185 117 91 17 74 224 11 80 216 11 82 248 132 105 128 132 65 144 3 66 32 23 80 227 149 173 43 187 248 178 46 197 106 133 86 96 133 26 97 131 41 168 25 35 136 130 41 112 131 67 160 3 63 153 132 53 176 25 27 144 138 27 48 2 81 170 130 11 105 3 66 184 132 210 217 134 122 104 135 49 180 5 221 41 65 248 58 163 83 224 4 69 152 52 242 233 2 48 145 131 66 96 131 49 186 165 56 176 144 155 59 27 43 75 132 91 104 134 29 218 21 72 168 4 175 27 133 82 96 6 242 18 6 100 84 54 97 200 5 72 58 132 57 240 130 154 17 48 157 67 132 55 241 132 73 16 4 216 41 62 28 0 2 223 48 37 66 16 4 190 64 22 119 32 7 100 240 133 143 209 139 131 2 4 81 56 5 105 160 6 97 48 5 71 82 4 60 200 130 42 112 68 11 144 2 54 96 131 55 80 68 124 148 70 90 204 50 22 9 132 79 0 135 95 0 178 172 240 4 159 2 6 103 152 6 114 255 104 7 82 244 6 114 112 135 110 232 152 92 144 54 77 96 132 55 248 130 122 172 2 31 120 196 190 248 132 64 64 18 35 144 130 221 88 4 94 17 5 182 193 6 109 56 6 91 192 5 135 233 132 23 116 44 51 20 134 97 112 134 97 0 6 169 219 36 71 243 2 105 4 160 82 218 2 40 216 129 173 154 130 92 106 131 167 115 165 24 129 170 97 24 134 226 217 44 56 114 135 204 235 64 109 32 135 114 112 7 14 236 162 92 32 5 72 96 4 44 24 8 177 160 157 75 248 5 80 184 132 54 24 2 35 40 25 66 88 132 117 140 37 11 60 6 170 242 132 243 160 67 225 73 150 231 187 201 181 41 5 72 144 71 43 224 129 34 200 1 12 128 2 212 1 76 213 217 1 71 68 148 39 200 71 45 240 196 10 57 134 100 200 151 113 184 188 113 240 134 15 108 73 10 50 133 88 168 73 109 192 134 100 248 24 91 48 69 70 137 131 189 217 27 57 152 168 95 120 145 66 32 4 132 52 5 96 208 134 122 176 7 114 192 6 94 192 44 99 248 5 57 41 134 98 255 176 192 203 35 40 103 88 6 52 18 5 222 113 4 239 24 165 10 40 130 160 36 206 108 188 1 34 48 130 41 144 2 113 249 31 45 48 130 20 9 168 94 8 30 94 56 134 96 232 133 58 164 172 202 210 29 80 48 133 138 226 139 79 248 8 34 155 24 29 130 4 82 56 134 173 211 138 167 154 74 120 120 77 206 84 32 177 236 4 79 136 19 51 44 158 111 8 135 106 32 175 221 225 157 69 144 39 27 216 1 10 160 0 7 112 128 165 136 21 119 97 141 40 176 129 251 152 143 7 56 1 30 96 3 72 96 201 79 232 4 91 168 67 136 65 17 223 91 131 20 65 4 164 146 2 46 128 131 83 50 155 78 168 133 90 160 172 77 24 5 79 8 168 149 228 5 246 194 6 131 122 193 58 180 132 75 48 150 44 147 168 68 208 10 82 56 133 103 136 134 105 200 6 67 27 134 88 16 133 235 185 130 22 232 1 132 129 23 1 41 58 121 241 129 110 201 129 19 104 1 157 216 9 8 248 150 66 152 134 100 40 17 179 129 75 65 176 170 41 208 130 68 225 185 208 255 65 2 204 113 130 83 18 132 22 177 132 240 180 5 99 24 134 225 185 190 29 155 6 111 40 6 179 89 17 68 176 132 74 112 131 42 250 2 44 192 3 66 169 161 12 217 133 102 96 134 102 168 134 102 64 198 83 128 4 50 88 2 22 232 173 168 208 9 18 128 0 169 176 1 37 152 151 22 192 129 6 93 138 165 32 129 34 152 3 96 192 6 80 248 19 67 152 4 91 66 4 158 195 0 41 160 55 174 74 9 212 170 130 57 216 130 39 208 130 53 64 83 91 64 22 168 26 7 82 156 6 11 52 134 79 152 35 141 202 37 66 216 130 41 88 68 32 176 1 42 92 64 43 128 131 104 41 59 102 8 133 80 56 5 223 196 3 35 192 1 21 200 12 8 80 10 88 113 208 115 219 1 29 160 146 71 93 138 3 152 82 30 128 3 72 240 84 55 91 3 14 224 0 120 155 2 251 240 23 227 171 129 46 35 2 4 220 130 34 192 128 39 152 2 65 48 4 4 250 133 96 120 27 119 152 165 205 156 81 65 208 2 45 80 87 158 44 20 155 241 1 28 184 1 159 255 83 174 43 32 3 78 56 133 102 152 133 70 122 132 69 40 178 56 192 130 7 195 1 28 240 150 110 105 129 44 0 2 29 160 2 49 104 130 141 165 146 19 16 1 8 64 24 35 24 77 91 136 131 35 89 3 55 49 4 47 72 80 98 221 1 32 216 129 122 172 194 81 202 129 44 17 138 33 88 24 56 41 30 94 24 134 100 56 134 166 3 20 7 140 3 47 64 130 40 24 165 34 96 141 22 136 10 9 184 129 203 1 130 56 88 71 237 82 132 70 32 3 37 80 78 54 232 170 84 101 2 35 56 183 121 52 11 254 35 214 168 160 214 18 240 129 46 88 159 56 224 2 1 131 217 131 123 157 255 220 129 45 145 194 117 89 1 160 225 89 216 249 89 87 186 132 97 240 5 192 26 27 79 224 25 92 50 37 148 24 165 173 105 218 21 48 1 166 192 146 21 88 129 45 176 46 112 90 132 59 0 33 28 200 1 194 68 192 41 120 3 80 243 2 190 217 182 38 0 2 31 48 66 41 216 1 28 136 143 130 193 129 44 216 132 96 24 4 46 240 63 55 128 217 3 255 11 2 4 236 42 53 8 130 32 48 2 212 165 146 29 32 78 194 132 130 56 184 132 79 104 22 136 217 132 91 128 147 45 40 194 212 162 2 21 80 188 30 128 10 141 37 138 15 208 12 7 144 2 71 200 4 30 212 218 69 56 2 31 232 173 110 209 129 145 244 2 94 131 145 81 184 131 49 152 161 219 171 130 26 208 86 111 193 129 30 72 2 138 112 214 66 0 209 57 88 3 80 27 88 53 144 2 53 168 131 52 152 2 35 208 221 35 172 1 27 40 2 174 138 29 68 16 27 10 34 133 75 40 133 142 160 5 64 17 37 222 141 10 205 168 222 21 176 1 29 128 0 17 24 128 7 136 128 55 16 198 85 84 50 34 253 50 22 136 138 132 229 221 41 144 197 210 131 4 203 133 131 44 32 136 166 77 85 29 200 189 50 112 132 172 116 4 164 154 93 58 168 4 52 72 3 53 80 3 52 168 3 55 112 131 122 77 131 83 213 93 192 132 179 1 35 133 94 48 69 5 179 168 79 184 133 54 155 2 130 112 87 162 88 181 4 56 1 42 164 224 19 40 2 67 255 32 5 235 98 97 60 16 131 30 96 129 19 40 129 157 56 1 229 10 2 38 160 2 113 101 52 183 115 4 68 64 131 186 241 130 4 193 173 42 128 3 78 200 133 130 60 170 181 115 3 67 112 131 31 238 97 53 112 131 55 120 130 121 43 20 221 13 2 216 137 2 45 144 3 201 251 132 233 88 59 56 33 133 91 176 4 55 96 4 0 230 129 157 16 128 89 249 0 8 176 1 30 64 149 21 72 3 74 184 5 45 18 19 60 104 130 105 197 1 8 152 21 53 54 2 89 102 2 2 186 182 95 220 194 55 112 3 44 48 100 53 192 2 56 144 44 83 8 6 97 32 133 248 187 37 158 147 2 52 232 225 32 86 131 55 248 225 52 88 228 226 99 228 41 184 144 243 64 168 137 1 43 43 155 4 67 136 131 45 224 1 27 16 208 7 56 0 7 104 0 7 160 194 40 8 130 12 224 128 155 115 131 44 176 130 43 16 37 87 38 138 162 112 23 28 48 224 82 42 132 81 35 132 211 52 228 125 44 148 31 254 97 54 96 59 76 96 226 228 185 185 107 73 131 55 255 72 3 52 56 131 32 174 3 52 80 131 121 75 131 29 208 93 98 173 0 212 217 2 65 96 96 106 219 104 79 184 132 232 168 57 2 142 92 129 113 138 27 176 129 40 72 3 14 112 55 12 80 169 152 57 11 21 40 129 254 208 137 250 40 130 216 114 55 192 43 4 14 229 187 186 193 130 125 108 102 55 128 3 244 169 131 19 76 35 67 24 48 68 32 20 56 107 230 58 112 232 135 86 131 229 180 1 2 158 104 190 140 157 54 112 152 67 88 176 158 153 208 79 232 133 67 48 4 155 209 92 72 141 92 7 45 130 56 56 215 53 152 130 10 24 138 19 208 196 59 10 1 2 16 129 21 200 129 36 166 3 58 216 3 74 240 25 67 24 64 172 38 132 124 114 64 55 112 4 214 162 131 157 201 132 76 16 134 99 160 131 191 142 3 34 216 129 39 16 228 134 70 3 54 168 3 53 56 231 55 168 217 223 141 130 128 30 232 77 200 230 18 245 147 80 53 4 158 43 130 29 136 92 120 217 1 11 48 101 74 48 4 40 112 0 10 160 18 6 136 178 47 43 24 9 255 184 143 117 189 0 54 88 3 74 144 196 0 60 132 58 168 4 76 248 187 1 92 234 181 211 4 226 150 156 178 251 172 105 187 88 30 144 130 32 72 3 166 86 102 41 152 183 41 152 232 41 180 1 124 20 108 192 179 178 63 225 0 94 37 23 208 86 87 111 206 1 139 126 130 187 238 106 39 9 141 176 230 129 81 98 21 158 32 208 247 160 105 41 32 4 45 120 2 53 200 199 66 96 4 68 112 13 68 80 194 51 104 189 165 214 132 74 208 132 76 56 133 112 192 134 192 137 3 158 27 73 254 133 232 100 142 194 122 165 104 27 144 229 232 94 3 136 210 132 77 224 97 116 213 40 124 100 3 73 212 168 96 157 130 39 208 237 55 81 237 28 160 143 204 29 165 246 133 233 162 235 15 6 112 0 5 108 192 5 140 2 214 40 8 0 51 194 55 232 92 67 166 227 60 208 132 67 152 41 106 160 140 83 184 165 55 240 130 52 128 130 32 0 226 100 86 232 69 142 130 154 73 3 10 56 85 68 168 4 221 73 193 125 12 2 41 236 57 192 76 131 163 116 131 123 91 165 131 53 104 189 75 88 131 226 51 105 215 1 96 28 104 0 18 72 128 84 67 0 17 64 0 169 216 129 26 148 2 160 219 216 210 253 129 35 234 129 37 80 131 118 174 2 37 40 3 55 54 201 77 200 133 98 184 5 41 54 4 186 174 131 39 232 225 52 152 183 253 205 221 69 14 130 251 32 76 115 201 133 93 56 49 56 48 130 128 0 0 59]! !
!UMLVerticalWebStyle categoriesFor: #css1Body!public!styles-screen! !
!UMLVerticalWebStyle categoriesFor: #css40NavigationBar!navigation bar !public!styles-screen! !
!UMLVerticalWebStyle categoriesFor: #cssTabs1!public!styles-screen! !
!UMLVerticalWebStyle categoriesFor: #cssTabs2!public!styles-screen! !
!UMLVerticalWebStyle categoriesFor: #cssTabs3!public!styles-screen! !
!UMLVerticalWebStyle categoriesFor: #cssTabs4!public!styles-screen! !
!UMLVerticalWebStyle categoriesFor: #cssTabs5!public!styles-screen! !
!UMLVerticalWebStyle categoriesFor: #navBarContactElementFor:!frame navigation!public! !
!UMLVerticalWebStyle categoriesFor: #navBarObserveeOptionsFor:!frame navigation!public! !
!UMLVerticalWebStyle categoriesFor: #navBarRootObjectsOptionsFor:!frame navigation!public! !
!UMLVerticalWebStyle categoriesFor: #navBarSetupObjectsOptionsFor:!frame navigation!public! !
!UMLVerticalWebStyle categoriesFor: #navigationBarElement!frame navigation!public! !
!UMLVerticalWebStyle categoriesFor: #navigationBarElementFor:!frame navigation!public! !
!UMLVerticalWebStyle categoriesFor: #pageFrameWith:title:observee:!frame printing!public! !
!UMLVerticalWebStyle categoriesFor: #pageFrameWith:wide:title:!frame printing!public! !
!UMLVerticalWebStyle categoriesFor: #titleBackgroundGif!public! !

