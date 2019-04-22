"Filed out from Dolphin Smalltalk 7"!

Object subclass: #OrbeonFormXmlChunk
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
OrbeonFormXmlChunk guid: (GUID fromString: '{341005d8-8d38-444d-98ce-1c47f05c4d4c}')!
OrbeonFormXmlChunk comment: ''!
!OrbeonFormXmlChunk categoriesForClass!Kernel-Objects! !
!OrbeonFormXmlChunk methodsFor!

orbeonAttributes

	^''!

orbeonContents

	self subclassResponsibility!

writeContentsOn: aStream

	aStream nextPutAll: '<', self xmlTag, ' ', self orbeonAttributes ,'>'.
	aStream nextPutAll: self orbeonContents.
	aStream nextPutAll: '</', self xmlTag, '>'.
!

xmlTag

	self subclassResponsibility! !
!OrbeonFormXmlChunk categoriesFor: #orbeonAttributes!public! !
!OrbeonFormXmlChunk categoriesFor: #orbeonContents!public! !
!OrbeonFormXmlChunk categoriesFor: #writeContentsOn:!public! !
!OrbeonFormXmlChunk categoriesFor: #xmlTag!public! !

!OrbeonFormXmlChunk class methodsFor!

orbeonFormBasicExample

	^'<xh:html xmlns:xh="http://www.w3.org/1999/xhtml" xmlns:xf="http://www.w3.org/2002/xforms"
         xmlns:xs="http://www.w3.org/2001/XMLSchema"
         xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
         xmlns:ev="http://www.w3.org/2001/xml-events"
         xmlns:xi="http://www.w3.org/2001/XInclude"
         xmlns:xxi="http://orbeon.org/oxf/xml/xinclude"
         xmlns:xxf="http://orbeon.org/oxf/xml/xforms"
         xmlns:map="http://www.w3.org/2005/xpath-functions/map"
         xmlns:array="http://www.w3.org/2005/xpath-functions/array"
         xmlns:exf="http://www.exforms.org/exf/1-0"
         xmlns:fr="http://orbeon.org/oxf/xml/form-runner"
         xmlns:saxon="http://saxon.sf.net/"
         xmlns:sql="http://orbeon.org/oxf/xml/sql"
         xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/"
         xmlns:fb="http://orbeon.org/oxf/xml/form-builder">
    <xh:head>
        <xh:title>My Form</xh:title>
        <xf:model id="fr-form-model" xxf:expose-xpath-types="true" xxf:analysis.calculate="true">

            <!!-- Main instance -->
            <xf:instance id="fr-form-instance" xxf:exclude-result-prefixes="#all" xxf:index="id">
                <form>
                    <section-1>
                        <control-1/>
                    </section-1>
                </form>
            </xf:instance>

            <!!-- Bindings -->
            <xf:bind id="fr-form-binds" ref="instance(''fr-form-instance'')">
                <xf:bind id="section-1-bind" name="section-1" ref="section-1">
                    <xf:bind id="control-1-bind" name="control-1" ref="control-1" xxf:whitespace="trim"/>
                </xf:bind>
            </xf:bind>

            <!!-- Metadata -->
            <xf:instance id="fr-form-metadata" xxf:readonly="true" xxf:exclude-result-prefixes="#all">
                <metadata>
                    <application-name>ue</application-name>
                    <form-name>my-form</form-name>
                    <title xml:lang="en">My Form</title>
                    <description xml:lang="en"/>
                    <created-with-version>2018.2.2.201903012338 PE</created-with-version>
                </metadata>
            </xf:instance>

            <!!-- Attachments -->
            <xf:instance id="fr-form-attachments" xxf:exclude-result-prefixes="#all">
                <attachments/>
            </xf:instance>

            <!!-- All form resources -->
            <xf:instance xxf:readonly="true" id="fr-form-resources" xxf:exclude-result-prefixes="#all">
                <resources>
                    <resource xml:lang="en">
                        <section-1>
                            <label>Untitled Section</label>
                        </section-1>
                        <control-1>
                            <label/>
                            <hint/>
                            <alert/>
                        </control-1>
                    </resource>
                </resources>
            </xf:instance>

        </xf:model>
    </xh:head>
    <xh:body>
        <fr:view>
            <fr:body xmlns:xbl="http://www.w3.org/ns/xbl" xmlns:p="http://www.orbeon.com/oxf/pipeline"
                     xmlns:oxf="http://www.orbeon.com/oxf/processors">
                <fr:section id="section-1-section" bind="section-1-bind">
                    <xf:label ref="$form-resources/section-1/label"/>
                    <fr:grid id="grid-1-grid">
                        <fr:c y="1" x="1" w="12">
                                <xf:input id="control-1-control" bind="control-1-bind">
                                    <xf:label ref="$form-resources/control-1/label"/>
                                    <xf:hint ref="$form-resources/control-1/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </xf:input>
                            </fr:c>
                    </fr:grid>
                </fr:section>
            </fr:body>
        </fr:view>
    </xh:body>
</xh:html>'! !
!OrbeonFormXmlChunk class categoriesFor: #orbeonFormBasicExample!public! !

