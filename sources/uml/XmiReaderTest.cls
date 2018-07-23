"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #XmiReaderTest
	instanceVariableNames: 'xmiReader'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
XmiReaderTest guid: (GUID fromString: '{c19354aa-edba-4b3c-971f-69af4ca566f9}')!
XmiReaderTest comment: ''!
!XmiReaderTest categoriesForClass!Unclassified! !
!XmiReaderTest methodsFor!

xmiReader
	^xmiReader!

xmiReader: anObject
	xmiReader := anObject!

xmiUmlModelExample1

	^'<?xml version="1.0" encoding="windows-1252"?>
<xmi:XMI xmi:version="2.1" xmlns:uml="http://schema.omg.org/spec/UML/2.1" xmlns:xmi="http://schema.omg.org/spec/XMI/2.1" xmlns:thecustomprofile="http://www.sparxsystems.com/profiles/thecustomprofile/1.0">
	<xmi:Documentation exporter="Enterprise Architect" exporterVersion="6.5"/>
	<uml:Model xmi:type="uml:Model" name="EA_Model" visibility="public">
		<packagedElement xmi:type="uml:Package" xmi:id="EAPK_34764A9C_C5CD_409f_AB77_F05F03350F1C" name="Model" visibility="public">
			<packagedElement xmi:type="uml:Package" xmi:id="EAPK_EEB11991_FB33_45bd_A6EB_0C781A55C342" name="Domain Model" visibility="public">
				<packagedElement xmi:type="uml:StateMachine" xmi:id="EAID_SM000001_FB33_45bd_A6EB_0C781A55C342" name="EA_StateMachine1" visibility="public">
					<region xmi:type="uml:Region" xmi:id="EAID_SR000001_FB33_45bd_A6EB_0C781A55C342" name="EA_Region1" visibility="public">
						<subvertex xmi:type="uml:State" xmi:id="EAID_1AE2FF85_8FF1_4143_8284_91850224D198" name="Actualizado" visibility="public" isSubmachineState="false">
							<incoming xmi:idref="EAID_E9B47ACC_759A_47a7_A639_A35A3738F6A8"/>
							<incoming xmi:idref="EAID_2D1D3EDF_CBE7_4c77_AF90_162E8F262A8A"/>
							<incoming xmi:idref="EAID_0FDFE708_788A_4682_BA84_0DD32DF1B817"/>
							<outgoing xmi:idref="EAID_DA59AAB4_104A_4c67_AB6B_95FDD7984FE4"/>
						</subvertex>
						<transition xmi:type="uml:Transition" xmi:id="EAID_DA59AAB4_104A_4c67_AB6B_95FDD7984FE4" name="enviarActualizado" visibility="public" kind="local" source="EAID_1AE2FF85_8FF1_4143_8284_91850224D198" target="EAID_FB3D8A23_8FA3_454f_BBF4_4A2D142C12D5"/>
						<subvertex xmi:type="uml:State" xmi:id="EAID_972E8417_3864_40a0_89D4_672213108D9C" name="Aprobado" visibility="public" isSubmachineState="false">
							<incoming xmi:idref="EAID_8987C57A_1043_4e5b_B36F_4EF32B3442A6"/>
							<incoming xmi:idref="EAID_6EECE0B9_DF1F_4fe0_85C9_22A3ACDDFBEC"/>
							<outgoing xmi:idref="EAID_59238AC5_943A_4ff5_8DF3_89BDC747DFA3"/>
							<outgoing xmi:idref="EAID_0FDFE708_788A_4682_BA84_0DD32DF1B817"/>
						</subvertex>
						<transition xmi:type="uml:Transition" xmi:id="EAID_0FDFE708_788A_4682_BA84_0DD32DF1B817" name="actualizarAprobado" visibility="public" kind="local" source="EAID_972E8417_3864_40a0_89D4_672213108D9C" target="EAID_1AE2FF85_8FF1_4143_8284_91850224D198"/>
						<transition xmi:type="uml:Transition" xmi:id="EAID_59238AC5_943A_4ff5_8DF3_89BDC747DFA3" name="archivarAprobado" visibility="public" kind="local" source="EAID_972E8417_3864_40a0_89D4_672213108D9C" target="EAID_70891F23_E1FA_45d0_8AD6_46B7EE097BC9"/>
						<subvertex xmi:type="uml:State" xmi:id="EAID_70891F23_E1FA_45d0_8AD6_46B7EE097BC9" name="Archivado" visibility="public" isSubmachineState="false">
							<incoming xmi:idref="EAID_7BA0C9B1_5756_4307_B516_5DC08F64B959"/>
							<incoming xmi:idref="EAID_59238AC5_943A_4ff5_8DF3_89BDC747DFA3"/>
							<incoming xmi:idref="EAID_0D7DF320_588B_4285_9CFC_B22BE9070196"/>
							<outgoing xmi:idref="EAID_8A2E76C0_5FBB_471b_B660_B07EC00F7B7C"/>
						</subvertex>
						<transition xmi:type="uml:Transition" xmi:id="EAID_8A2E76C0_5FBB_471b_B660_B07EC00F7B7C" name="finalizarArchivado" visibility="public" kind="local" source="EAID_70891F23_E1FA_45d0_8AD6_46B7EE097BC9" target="EAID_12FED14F_9189_40f8_862E_E043DB5DFBA7"/>
						<subvertex xmi:type="uml:State" xmi:id="EAID_981FFBFC_C5C7_4c71_AA33_38DFE2C83CA2" name="Borrador" visibility="public" isSubmachineState="false">
							<incoming xmi:idref="EAID_BC6E9103_4C16_4489_94EC_A7FB9F442EB0"/>
							<outgoing xmi:idref="EAID_C721A870_8233_408f_A655_7404C190AF29"/>
						</subvertex>
						<transition xmi:type="uml:Transition" xmi:id="EAID_C721A870_8233_408f_A655_7404C190AF29" name="enviarBorrador" visibility="public" kind="local" source="EAID_981FFBFC_C5C7_4c71_AA33_38DFE2C83CA2" target="EAID_FB3D8A23_8FA3_454f_BBF4_4A2D142C12D5"/>
						<subvertex xmi:type="uml:State" xmi:id="EAID_D9C729D7_B811_4780_9213_0A6234D11014" name="EnRevision" visibility="public" isSubmachineState="false">
							<incoming xmi:idref="EAID_44A9372D_7C5B_42bc_9F30_7D1051C353E9"/>
							<outgoing xmi:idref="EAID_BC69529B_2F21_4228_ABDE_5C52B6F6FD31"/>
							<outgoing xmi:idref="EAID_860BD803_A662_4404_9C3F_6524CA44230E"/>
							<outgoing xmi:idref="EAID_6EECE0B9_DF1F_4fe0_85C9_22A3ACDDFBEC"/>
						</subvertex>
						<transition xmi:type="uml:Transition" xmi:id="EAID_6EECE0B9_DF1F_4fe0_85C9_22A3ACDDFBEC" name="aprobarRevision" visibility="public" kind="local" source="EAID_D9C729D7_B811_4780_9213_0A6234D11014" target="EAID_972E8417_3864_40a0_89D4_672213108D9C"/>
						<transition xmi:type="uml:Transition" xmi:id="EAID_860BD803_A662_4404_9C3F_6524CA44230E" name="pedirAclaracion" visibility="public" kind="local" source="EAID_D9C729D7_B811_4780_9213_0A6234D11014" target="EAID_D827D872_BC80_471d_A2EC_1EB9D0E0138F"/>
						<transition xmi:type="uml:Transition" xmi:id="EAID_BC69529B_2F21_4228_ABDE_5C52B6F6FD31" name="rechazarRevision" visibility="public" kind="local" source="EAID_D9C729D7_B811_4780_9213_0A6234D11014" target="EAID_78010233_2D3A_4cfe_A022_B20739EB3AF3"/>
						<subvertex xmi:type="uml:State" xmi:id="EAID_FB3D8A23_8FA3_454f_BBF4_4A2D142C12D5" name="Enviado" visibility="public" isSubmachineState="false">
							<incoming xmi:idref="EAID_DA59AAB4_104A_4c67_AB6B_95FDD7984FE4"/>
							<incoming xmi:idref="EAID_C721A870_8233_408f_A655_7404C190AF29"/>
							<outgoing xmi:idref="EAID_CCFA1A8F_EAFF_4caf_B954_16F979052E28"/>
							<outgoing xmi:idref="EAID_8987C57A_1043_4e5b_B36F_4EF32B3442A6"/>
						</subvertex>
						<transition xmi:type="uml:Transition" xmi:id="EAID_8987C57A_1043_4e5b_B36F_4EF32B3442A6" name="aprobarEnviado" visibility="public" kind="local" source="EAID_FB3D8A23_8FA3_454f_BBF4_4A2D142C12D5" target="EAID_972E8417_3864_40a0_89D4_672213108D9C"/>
						<transition xmi:type="uml:Transition" xmi:id="EAID_CCFA1A8F_EAFF_4caf_B954_16F979052E28" name="tomarParaRevision" visibility="public" kind="local" source="EAID_FB3D8A23_8FA3_454f_BBF4_4A2D142C12D5" target="EAID_884F1105_1CFE_430a_AB72_8CAFF05AE218"/>
						<subvertex xmi:type="uml:State" xmi:id="EAID_D827D872_BC80_471d_A2EC_1EB9D0E0138F" name="PendienteAclaracion" visibility="public" isSubmachineState="false">
							<incoming xmi:idref="EAID_860BD803_A662_4404_9C3F_6524CA44230E"/>
							<outgoing xmi:idref="EAID_9141B6A6_E897_402f_91D2_3161C93617D7"/>
							<outgoing xmi:idref="EAID_2D1D3EDF_CBE7_4c77_AF90_162E8F262A8A"/>
						</subvertex>
						<transition xmi:type="uml:Transition" xmi:id="EAID_2D1D3EDF_CBE7_4c77_AF90_162E8F262A8A" name="actualizarPendiente" visibility="public" kind="local" source="EAID_D827D872_BC80_471d_A2EC_1EB9D0E0138F" target="EAID_1AE2FF85_8FF1_4143_8284_91850224D198"/>
						<transition xmi:type="uml:Transition" xmi:id="EAID_9141B6A6_E897_402f_91D2_3161C93617D7" name="vencerAclaracion" visibility="public" kind="local" source="EAID_D827D872_BC80_471d_A2EC_1EB9D0E0138F" target="EAID_7657442C_DE12_4088_8D5A_07ED97EAFA3A"/>
						<subvertex xmi:type="uml:State" xmi:id="EAID_884F1105_1CFE_430a_AB72_8CAFF05AE218" name="PendienteRevision" visibility="public" isSubmachineState="false">
							<incoming xmi:idref="EAID_CCFA1A8F_EAFF_4caf_B954_16F979052E28"/>
							<outgoing xmi:idref="EAID_44A9372D_7C5B_42bc_9F30_7D1051C353E9"/>
						</subvertex>
						<transition xmi:type="uml:Transition" xmi:id="EAID_44A9372D_7C5B_42bc_9F30_7D1051C353E9" name="revisarPendiente" visibility="public" kind="local" source="EAID_884F1105_1CFE_430a_AB72_8CAFF05AE218" target="EAID_D9C729D7_B811_4780_9213_0A6234D11014"/>
						<subvertex xmi:type="uml:State" xmi:id="EAID_78010233_2D3A_4cfe_A022_B20739EB3AF3" name="Rechazado" visibility="public" isSubmachineState="false">
							<incoming xmi:idref="EAID_BC69529B_2F21_4228_ABDE_5C52B6F6FD31"/>
							<outgoing xmi:idref="EAID_7BA0C9B1_5756_4307_B516_5DC08F64B959"/>
						</subvertex>
						<transition xmi:type="uml:Transition" xmi:id="EAID_7BA0C9B1_5756_4307_B516_5DC08F64B959" name="archivarRechazado" visibility="public" kind="local" source="EAID_78010233_2D3A_4cfe_A022_B20739EB3AF3" target="EAID_70891F23_E1FA_45d0_8AD6_46B7EE097BC9"/>
						<subvertex xmi:type="uml:State" xmi:id="EAID_7657442C_DE12_4088_8D5A_07ED97EAFA3A" name="Vencido" visibility="public" isSubmachineState="false">
							<incoming xmi:idref="EAID_9141B6A6_E897_402f_91D2_3161C93617D7"/>
							<outgoing xmi:idref="EAID_E9B47ACC_759A_47a7_A639_A35A3738F6A8"/>
							<outgoing xmi:idref="EAID_0D7DF320_588B_4285_9CFC_B22BE9070196"/>
						</subvertex>
						<transition xmi:type="uml:Transition" xmi:id="EAID_0D7DF320_588B_4285_9CFC_B22BE9070196" name="archivarVencido" visibility="public" kind="local" source="EAID_7657442C_DE12_4088_8D5A_07ED97EAFA3A" target="EAID_70891F23_E1FA_45d0_8AD6_46B7EE097BC9"/>
						<transition xmi:type="uml:Transition" xmi:id="EAID_E9B47ACC_759A_47a7_A639_A35A3738F6A8" name="actualizarVencido" visibility="public" kind="local" source="EAID_7657442C_DE12_4088_8D5A_07ED97EAFA3A" target="EAID_1AE2FF85_8FF1_4143_8284_91850224D198"/>
						<subvertex xmi:type="uml:FinalState" xmi:id="EAID_12FED14F_9189_40f8_862E_E043DB5DFBA7" name="fin" visibility="public">
							<incoming xmi:idref="EAID_8A2E76C0_5FBB_471b_B660_B07EC00F7B7C"/>
						</subvertex>
						<subvertex xmi:type="uml:Pseudostate" xmi:id="EAID_E5D1BC6E_2870_4f87_9B74_2AF74422294E" name="inicio" visibility="public" kind="initial">
							<outgoing xmi:idref="EAID_BC6E9103_4C16_4489_94EC_A7FB9F442EB0"/>
						</subvertex>
						<transition xmi:type="uml:Transition" xmi:id="EAID_BC6E9103_4C16_4489_94EC_A7FB9F442EB0" name="crearBorrador" visibility="public" kind="local" source="EAID_E5D1BC6E_2870_4f87_9B74_2AF74422294E" target="EAID_981FFBFC_C5C7_4c71_AA33_38DFE2C83CA2"/>
					</region>
				</packagedElement>
				<packagedElement xmi:type="uml:Package" xmi:id="EAPK_4530D12D_3FE1_4dbe_8199_0FC1D89C8D71" name="Domain Objects" visibility="public">
					<ownedComment xmi:type="uml:Comment" xmi:id="EAID_B50119B3_183D_49e9_AC42_C855CBE4EEBA" body="The Domain class model captures essential information about objects in the domain. "/>
				</packagedElement>
			</packagedElement>
			<packagedElement xmi:type="uml:Package" xmi:id="EAPK_BB813498_4F89_46cc_A391_35CBDF001B91" name="Class Model" visibility="public">
				<ownedComment xmi:type="uml:Comment" xmi:id="EAID_C6A1CB6A_E7F2_4c9d_8283_0B54C088C11A" body="Classes, interfaces and logical components for the new system">
					<annotatedElement xmi:idref="EAID_7F384018_442B_4192_83E2_D6362D07772D"/>
				</ownedComment>
				<ownedComment xmi:type="uml:Comment" xmi:id="EAID_7C422CBA_2B31_4ac0_AC25_953CDEACEBCC" body="Class libraries, API''s and other re-usable components">
					<annotatedElement xmi:idref="EAID_BCF1D6BC_7ACD_4070_9C41_C233E19E2A28"/>
				</ownedComment>
				<ownedComment xmi:type="uml:Comment" xmi:id="EAID_54B4214E_D5F5_434a_90BD_ED513C62D738" body="The Class Model is a logical model of the software system under construction. Classes generally have a direct relationship to source code or other software artifacts that can be grouped together into executable components. &#xA;&#xA;The System package contains the classes and artifacts which are being built or designed as part of the current model. The Frameworks package generally contains classes and components that have been designed and built earlier and are being reused as part of the current project."/>
				<packagedElement xmi:type="uml:Class" xmi:id="EAID_85056535_C1E9_4916_BA1B_D72376F38B8B" name="$help://class_model_pattern.htm" visibility="public"/>
				<packagedElement xmi:type="uml:Class" xmi:id="EAID_BD5769BE_A74D_4401_8E79_F0D8F4B75CE6" name="$help://classdiagram.htm" visibility="public"/>
				<packagedElement xmi:type="uml:Package" xmi:id="EAPK_7F384018_442B_4192_83E2_D6362D07772D" name="System" visibility="public">
					<packagedElement xmi:type="uml:Interface" xmi:id="EAID_C1E35771_C240_44ba_BBC3_7A952DA32142" name="Interface1" visibility="public" isAbstract="true"/>
				</packagedElement>
				<packagedElement xmi:type="uml:Package" xmi:id="EAPK_BCF1D6BC_7ACD_4070_9C41_C233E19E2A28" name="Frameworks" visibility="public">
					<ownedComment xmi:type="uml:Comment" xmi:id="EAID_2BAD0B4C_4BAE_4df4_BC77_DBCAFA2D1009"/>
				</packagedElement>
			</packagedElement>
			<packagedElement xmi:type="uml:Package" xmi:id="EAPK_251C3D9E_572F_489f_A441_FE800ED72348" name="Class Model" visibility="public">
				<ownedComment xmi:type="uml:Comment" xmi:id="EAID_F3421EFA_73DA_4666_A102_BDC5DE63DB87" body="Son &quot;Clases&quot;">
					<annotatedElement xmi:idref="EAID_912BC6F8_FB18_4416_9432_1AD48775676D"/>
					<annotatedElement xmi:idref="EAID_FEB7F827_B053_4f45_B04C_FD5ABDACF252"/>
				</ownedComment>
				<ownedComment xmi:type="uml:Comment" xmi:id="EAID_7984C344_5848_452e_B012_4DB9066DD487" body="&lt;b&gt;&lt;u&gt;Proceso Notificaciones&lt;/u&gt;&lt;/b&gt;"/>
				<packagedElement xmi:type="uml:Class" xmi:id="EAID_E0F984DE_07AC_408f_AC07_AD83323C322D" name="Campo" visibility="public">
					<ownedAttribute xmi:type="uml:Property" xmi:id="EAID_10C47806_D08F_41ec_89D3_55E36CA4B753" name="nombre" visibility="private" isDerived="false" isOrdered="false">
						<lowerValue xmi:type="uml:LiteralInteger" xmi:id="EAID_LI000001_D08F_41ec_89D3_55E36CA4B753" value="1"/>
						<upperValue xmi:type="uml:LiteralInteger" xmi:id="EAID_LI000002_D08F_41ec_89D3_55E36CA4B753" value="1"/>
					</ownedAttribute>
					<ownedAttribute xmi:type="uml:Property" xmi:id="EAID_7D67D251_A2BD_434a_B986_2274A429475D" name="tipo" visibility="private" isDerived="false" isOrdered="false">
						<lowerValue xmi:type="uml:LiteralInteger" xmi:id="EAID_LI000003_A2BD_434a_B986_2274A429475D" value="1"/>
						<upperValue xmi:type="uml:LiteralInteger" xmi:id="EAID_LI000004_A2BD_434a_B986_2274A429475D" value="1"/>
					</ownedAttribute>
					<ownedAttribute xmi:type="uml:Property" xmi:id="EAID_795D2EA7_3B13_428a_AB89_4E1C6B205B70" name="valor" visibility="private" isDerived="false" isOrdered="false">
						<lowerValue xmi:type="uml:LiteralInteger" xmi:id="EAID_LI000005_3B13_428a_AB89_4E1C6B205B70" value="1"/>
						<upperValue xmi:type="uml:LiteralInteger" xmi:id="EAID_LI000006_3B13_428a_AB89_4E1C6B205B70" value="1"/>
					</ownedAttribute>
				</packagedElement>
				<packagedElement xmi:type="uml:Association" xmi:id="EAID_9B5A4EF9_D429_4825_8D1D_169C46B7DE57" visibility="public">
					<memberEnd xmi:idref="EAID_dst5A4EF9_D429_4825_8D1D_169C46B7DE57"/>
					<memberEnd xmi:idref="EAID_src5A4EF9_D429_4825_8D1D_169C46B7DE57"/>
					<ownedEnd xmi:type="uml:Property" xmi:id="EAID_src5A4EF9_D429_4825_8D1D_169C46B7DE57" visibility="public" association="EAID_9B5A4EF9_D429_4825_8D1D_169C46B7DE57" isOrdered="false" isDerived="false" isDerivedUnion="false" aggregation="none">
						<type xmi:idref="EAID_7B8740F5_412B_4150_91DF_8C3A06A3C5FB"/>
						<lowerValue xmi:type="uml:LiteralInteger" xmi:id="EAID_SL000000_D429_4825_8D1D_169C46B7DE57" value="1"/>
						<upperValue xmi:type="uml:LiteralInteger" xmi:id="EAID_SU000000_D429_4825_8D1D_169C46B7DE57" value="1"/>
					</ownedEnd>
					<ownedEnd xmi:type="uml:Property" xmi:id="EAID_dst5A4EF9_D429_4825_8D1D_169C46B7DE57" visibility="public" association="EAID_9B5A4EF9_D429_4825_8D1D_169C46B7DE57" isOrdered="false" isDerived="false" isDerivedUnion="false" aggregation="none">
						<type xmi:idref="EAID_E0F984DE_07AC_408f_AC07_AD83323C322D"/>
						<lowerValue xmi:type="uml:LiteralInteger" xmi:id="EAID_DL000000_D429_4825_8D1D_169C46B7DE57" value="0"/>
						<upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="EAID_DU000000_D429_4825_8D1D_169C46B7DE57" value="-1"/>
					</ownedEnd>
				</packagedElement>
				<packagedElement xmi:type="uml:Class" xmi:id="EAID_936272D8_AEEF_4b92_B5F6_55FD046C216C" name="Categoria" visibility="public">
					<ownedAttribute xmi:type="uml:Property" xmi:id="EAID_6A5A5A62_539E_467d_AE79_ABBC4BEA9003" name="nombre" visibility="private" isDerived="false" isOrdered="false">
						<lowerValue xmi:type="uml:LiteralInteger" xmi:id="EAID_LI000007_539E_467d_AE79_ABBC4BEA9003" value="1"/>
						<upperValue xmi:type="uml:LiteralInteger" xmi:id="EAID_LI000008_539E_467d_AE79_ABBC4BEA9003" value="1"/>
					</ownedAttribute>
				</packagedElement>
				<packagedElement xmi:type="uml:Association" xmi:id="EAID_44FC0EC0_3ECE_4fa5_A59A_42410D2E9CA6" visibility="public">
					<memberEnd xmi:idref="EAID_dstFC0EC0_3ECE_4fa5_A59A_42410D2E9CA6"/>
					<memberEnd xmi:idref="EAID_srcFC0EC0_3ECE_4fa5_A59A_42410D2E9CA6"/>
					<ownedEnd xmi:type="uml:Property" xmi:id="EAID_srcFC0EC0_3ECE_4fa5_A59A_42410D2E9CA6" visibility="public" association="EAID_44FC0EC0_3ECE_4fa5_A59A_42410D2E9CA6" isOrdered="false" isDerived="false" isDerivedUnion="false" aggregation="none">
						<type xmi:idref="EAID_DB6D4F90_8A74_4253_A05F_15E389F9E7BF"/>
						<lowerValue xmi:type="uml:LiteralInteger" xmi:id="EAID_SL000000_3ECE_4fa5_A59A_42410D2E9CA6" value="0"/>
						<upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="EAID_SU000000_3ECE_4fa5_A59A_42410D2E9CA6" value="-1"/>
					</ownedEnd>
					<ownedEnd xmi:type="uml:Property" xmi:id="EAID_dstFC0EC0_3ECE_4fa5_A59A_42410D2E9CA6" visibility="public" association="EAID_44FC0EC0_3ECE_4fa5_A59A_42410D2E9CA6" isOrdered="false" isDerived="false" isDerivedUnion="false" aggregation="none">
						<type xmi:idref="EAID_936272D8_AEEF_4b92_B5F6_55FD046C216C"/>
						<lowerValue xmi:type="uml:LiteralInteger" xmi:id="EAID_DL000000_3ECE_4fa5_A59A_42410D2E9CA6" value="0"/>
						<upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="EAID_DU000000_3ECE_4fa5_A59A_42410D2E9CA6" value="-1"/>
					</ownedEnd>
				</packagedElement>
				<packagedElement xmi:type="uml:Class" xmi:id="EAID_38C8A964_D4EB_4cd2_A707_757CDE9EC9EC" name="DefinicionMaquinaEstado" visibility="public">
					<ownedAttribute xmi:type="uml:Property" xmi:id="EAID_2ED7FA96_9031_4a3a_A2DC_39577573C63A" name="codigo" visibility="private" isDerived="false" isOrdered="false">
						<lowerValue xmi:type="uml:LiteralInteger" xmi:id="EAID_LI000009_9031_4a3a_A2DC_39577573C63A" value="1"/>
						<upperValue xmi:type="uml:LiteralInteger" xmi:id="EAID_LI000010_9031_4a3a_A2DC_39577573C63A" value="1"/>
					</ownedAttribute>
					<ownedAttribute xmi:type="uml:Property" xmi:id="EAID_2A324CF8_E0D1_4abc_B6D7_44B8F4008F1C" name="descripcion" visibility="private" isDerived="false" isOrdered="false">
						<lowerValue xmi:type="uml:LiteralInteger" xmi:id="EAID_LI000011_E0D1_4abc_B6D7_44B8F4008F1C" value="1"/>
						<upperValue xmi:type="uml:LiteralInteger" xmi:id="EAID_LI000012_E0D1_4abc_B6D7_44B8F4008F1C" value="1"/>
					</ownedAttribute>
					<ownedAttribute xmi:type="uml:Property" xmi:id="EAID_09069272_64FD_4bb4_869A_5818F824A233" name="nombre" visibility="private" isDerived="false" isOrdered="false">
						<lowerValue xmi:type="uml:LiteralInteger" xmi:id="EAID_LI000013_64FD_4bb4_869A_5818F824A233" value="1"/>
						<upperValue xmi:type="uml:LiteralInteger" xmi:id="EAID_LI000014_64FD_4bb4_869A_5818F824A233" value="1"/>
					</ownedAttribute>
					<ownedAttribute xmi:type="uml:Property" xmi:id="EAID_BB1CBD3E_D3EF_48b6_A233_ED8344DA05A7" name="version" visibility="private" isDerived="false" isOrdered="false">
						<lowerValue xmi:type="uml:LiteralInteger" xmi:id="EAID_LI000015_D3EF_48b6_A233_ED8344DA05A7" value="1"/>
						<upperValue xmi:type="uml:LiteralInteger" xmi:id="EAID_LI000016_D3EF_48b6_A233_ED8344DA05A7" value="1"/>
					</ownedAttribute>
					<ownedAttribute xmi:type="uml:Property" xmi:id="EAID_dst8E542A_6A3D_44fd_A414_02AC36303C2A" visibility="public" association="EAID_6E8E542A_6A3D_44fd_A414_02AC36303C2A" isOrdered="false" isDerived="false" isDerivedUnion="false" aggregation="none">
						<type xmi:idref="EAID_FEB7F827_B053_4f45_B04C_FD5ABDACF252"/>
						<lowerValue xmi:type="uml:LiteralInteger" xmi:id="EAID_DL000000_6A3D_44fd_A414_02AC36303C2A" value="0"/>
						<upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="EAID_DU000000_6A3D_44fd_A414_02AC36303C2A" value="-1"/>
					</ownedAttribute>
				</packagedElement>
				<packagedElement xmi:type="uml:Association" xmi:id="EAID_6E8E542A_6A3D_44fd_A414_02AC36303C2A" visibility="public">
					<memberEnd xmi:idref="EAID_dst8E542A_6A3D_44fd_A414_02AC36303C2A"/>
					<memberEnd xmi:idref="EAID_src8E542A_6A3D_44fd_A414_02AC36303C2A"/>
					<ownedEnd xmi:type="uml:Property" xmi:id="EAID_src8E542A_6A3D_44fd_A414_02AC36303C2A" visibility="public" association="EAID_6E8E542A_6A3D_44fd_A414_02AC36303C2A" isOrdered="false" isDerived="false" isDerivedUnion="false" aggregation="none">
						<type xmi:idref="EAID_38C8A964_D4EB_4cd2_A707_757CDE9EC9EC"/>
					</ownedEnd>
				</packagedElement>
				<packagedElement xmi:type="uml:Association" xmi:id="EAID_4B77B922_B452_4cfe_A7E4_EDADC5EB5EDF" visibility="public">
					<memberEnd xmi:idref="EAID_dst77B922_B452_4cfe_A7E4_EDADC5EB5EDF"/>
					<memberEnd xmi:idref="EAID_src77B922_B452_4cfe_A7E4_EDADC5EB5EDF"/>
					<ownedEnd xmi:type="uml:Property" xmi:id="EAID_src77B922_B452_4cfe_A7E4_EDADC5EB5EDF" visibility="public" association="EAID_4B77B922_B452_4cfe_A7E4_EDADC5EB5EDF" isOrdered="false" isDerived="false" isDerivedUnion="false" aggregation="none">
						<type xmi:idref="EAID_D177CECD_84CC_4aaf_990C_380C7A16A55B"/>
					</ownedEnd>
				</packagedElement>
				<packagedElement xmi:type="uml:Class" xmi:id="EAID_FEB7F827_B053_4f45_B04C_FD5ABDACF252" name="DefinicionTransicion" visibility="public">
					<ownedAttribute xmi:type="uml:Property" xmi:id="EAID_43A8ABBA_CD80_4121_A180_429F90D40EA7" name="nombre" visibility="private" isDerived="false" isOrdered="false">
						<lowerValue xmi:type="uml:LiteralInteger" xmi:id="EAID_LI000017_CD80_4121_A180_429F90D40EA7" value="1"/>
						<upperValue xmi:type="uml:LiteralInteger" xmi:id="EAID_LI000018_CD80_4121_A180_429F90D40EA7" value="1"/>
					</ownedAttribute>
					<ownedAttribute xmi:type="uml:Property" xmi:id="EAID_65DE47EC_93E6_4404_8504_C32638808B72" name="descripcion" visibility="private" isDerived="false" isOrdered="false">
						<lowerValue xmi:type="uml:LiteralInteger" xmi:id="EAID_LI000019_93E6_4404_8504_C32638808B72" value="1"/>
						<upperValue xmi:type="uml:LiteralInteger" xmi:id="EAID_LI000020_93E6_4404_8504_C32638808B72" value="1"/>
					</ownedAttribute>
					<ownedAttribute xmi:type="uml:Property" xmi:id="EAID_dst2D7E9D_2E1A_4eaf_A206_17D849AAE750" visibility="public" association="EAID_0C2D7E9D_2E1A_4eaf_A206_17D849AAE750" isOrdered="false" isDerived="false" isDerivedUnion="false" aggregation="none">
						<type xmi:idref="EAID_912BC6F8_FB18_4416_9432_1AD48775676D"/>
						<lowerValue xmi:type="uml:LiteralInteger" xmi:id="EAID_DL000000_2E1A_4eaf_A206_17D849AAE750" value="1"/>
						<upperValue xmi:type="uml:LiteralInteger" xmi:id="EAID_DU000000_2E1A_4eaf_A206_17D849AAE750" value="1"/>
					</ownedAttribute>
					<ownedAttribute xmi:type="uml:Property" xmi:id="EAID_dstBF6416_9370_4de1_A9F1_8618110BF8CC" visibility="public" association="EAID_6BBF6416_9370_4de1_A9F1_8618110BF8CC" isOrdered="false" isDerived="false" isDerivedUnion="false" aggregation="none">
						<type xmi:idref="EAID_912BC6F8_FB18_4416_9432_1AD48775676D"/>
						<lowerValue xmi:type="uml:LiteralInteger" xmi:id="EAID_DL000000_9370_4de1_A9F1_8618110BF8CC" value="1"/>
						<upperValue xmi:type="uml:LiteralInteger" xmi:id="EAID_DU000000_9370_4de1_A9F1_8618110BF8CC" value="1"/>
					</ownedAttribute>
				</packagedElement>
				<packagedElement xmi:type="uml:Association" xmi:id="EAID_0C2D7E9D_2E1A_4eaf_A206_17D849AAE750" name="actual" visibility="public">
					<memberEnd xmi:idref="EAID_dst2D7E9D_2E1A_4eaf_A206_17D849AAE750"/>
					<memberEnd xmi:idref="EAID_src2D7E9D_2E1A_4eaf_A206_17D849AAE750"/>
					<ownedEnd xmi:type="uml:Property" xmi:id="EAID_src2D7E9D_2E1A_4eaf_A206_17D849AAE750" visibility="public" association="EAID_0C2D7E9D_2E1A_4eaf_A206_17D849AAE750" isOrdered="false" isDerived="false" isDerivedUnion="false" aggregation="none">
						<type xmi:idref="EAID_FEB7F827_B053_4f45_B04C_FD5ABDACF252"/>
					</ownedEnd>
				</packagedElement>
				<packagedElement xmi:type="uml:Association" xmi:id="EAID_3E1AE3AB_6C76_4ffb_A619_DDBCBFB6A6B0" name="permisos a maquina de estados" visibility="public">
					<memberEnd xmi:idref="EAID_dst1AE3AB_6C76_4ffb_A619_DDBCBFB6A6B0"/>
					<ownedEnd xmi:type="uml:Property" xmi:id="EAID_dst1AE3AB_6C76_4ffb_A619_DDBCBFB6A6B0" visibility="public" association="EAID_3E1AE3AB_6C76_4ffb_A619_DDBCBFB6A6B0" isOrdered="false" isDerived="false" isDerivedUnion="false" aggregation="none">
						<type xmi:idref="EAID_D6358D5E_863D_44a7_96D9_9C3E91364044"/>
						<lowerValue xmi:type="uml:LiteralInteger" xmi:id="EAID_DL000000_6C76_4ffb_A619_DDBCBFB6A6B0" value="0"/>
						<upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="EAID_DU000000_6C76_4ffb_A619_DDBCBFB6A6B0" value="-1"/>
					</ownedEnd>
					<memberEnd xmi:idref="EAID_src1AE3AB_6C76_4ffb_A619_DDBCBFB6A6B0"/>
					<ownedEnd xmi:type="uml:Property" xmi:id="EAID_src1AE3AB_6C76_4ffb_A619_DDBCBFB6A6B0" visibility="public" association="EAID_3E1AE3AB_6C76_4ffb_A619_DDBCBFB6A6B0" isOrdered="false" isDerived="false" isDerivedUnion="false" aggregation="none">
						<type xmi:idref="EAID_FEB7F827_B053_4f45_B04C_FD5ABDACF252"/>
						<lowerValue xmi:type="uml:LiteralInteger" xmi:id="EAID_SL000000_6C76_4ffb_A619_DDBCBFB6A6B0" value="0"/>
						<upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="EAID_SU000000_6C76_4ffb_A619_DDBCBFB6A6B0" value="-1"/>
					</ownedEnd>
				</packagedElement>
				<packagedElement xmi:type="uml:Association" xmi:id="EAID_6BBF6416_9370_4de1_A9F1_8618110BF8CC" name="siguiente" visibility="public">
					<memberEnd xmi:idref="EAID_dstBF6416_9370_4de1_A9F1_8618110BF8CC"/>
					<memberEnd xmi:idref="EAID_srcBF6416_9370_4de1_A9F1_8618110BF8CC"/>
					<ownedEnd xmi:type="uml:Property" xmi:id="EAID_srcBF6416_9370_4de1_A9F1_8618110BF8CC" visibility="public" association="EAID_6BBF6416_9370_4de1_A9F1_8618110BF8CC" isOrdered="false" isDerived="false" isDerivedUnion="false" aggregation="none">
						<type xmi:idref="EAID_FEB7F827_B053_4f45_B04C_FD5ABDACF252"/>
					</ownedEnd>
				</packagedElement>
				<packagedElement xmi:type="uml:Association" xmi:id="EAID_96A42E29_350E_43ea_9445_328772D3D3C1" visibility="public">
					<memberEnd xmi:idref="EAID_dstA42E29_350E_43ea_9445_328772D3D3C1"/>
					<memberEnd xmi:idref="EAID_srcA42E29_350E_43ea_9445_328772D3D3C1"/>
					<ownedEnd xmi:type="uml:Property" xmi:id="EAID_srcA42E29_350E_43ea_9445_328772D3D3C1" visibility="public" association="EAID_96A42E29_350E_43ea_9445_328772D3D3C1" isOrdered="false" isDerived="false" isDerivedUnion="false" aggregation="none">
						<type xmi:idref="EAID_BE145EF8_3054_4b41_ABF8_23A90BB5F4D2"/>
					</ownedEnd>
				</packagedElement>
				<packagedElement xmi:type="uml:Class" xmi:id="EAID_494A45F6_51BE_4989_9E35_69DB61EC1EB4" name="Document" visibility="public">
					<ownedAttribute xmi:type="uml:Property" xmi:id="EAID_96F62FA3_A0A4_418c_A7B3_6A34A92E889F" name="nombre" visibility="private" isDerived="false" isOrdered="false">
						<lowerValue xmi:type="uml:LiteralInteger" xmi:id="EAID_LI000021_A0A4_418c_A7B3_6A34A92E889F" value="1"/>
						<upperValue xmi:type="uml:LiteralInteger" xmi:id="EAID_LI000022_A0A4_418c_A7B3_6A34A92E889F" value="1"/>
					</ownedAttribute>
					<ownedAttribute xmi:type="uml:Property" xmi:id="EAID_BC4BC6A3_C3B6_48ed_9E9E_8CFCD05B027B" name="extension" visibility="private" isDerived="false" isOrdered="false">
						<lowerValue xmi:type="uml:LiteralInteger" xmi:id="EAID_LI000023_C3B6_48ed_9E9E_8CFCD05B027B" value="1"/>
						<upperValue xmi:type="uml:LiteralInteger" xmi:id="EAID_LI000024_C3B6_48ed_9E9E_8CFCD05B027B" value="1"/>
					</ownedAttribute>
					<ownedAttribute xmi:type="uml:Property" xmi:id="EAID_5DE85A87_5F80_4da5_9AFB_47038D2D4BD7" name="directorio" visibility="private" isDerived="false" isOrdered="false">
						<lowerValue xmi:type="uml:LiteralInteger" xmi:id="EAID_LI000025_5F80_4da5_9AFB_47038D2D4BD7" value="1"/>
						<upperValue xmi:type="uml:LiteralInteger" xmi:id="EAID_LI000026_5F80_4da5_9AFB_47038D2D4BD7" value="1"/>
					</ownedAttribute>
				</packagedElement>
				<packagedElement xmi:type="uml:Association" xmi:id="EAID_3E93BDB2_46A2_4c2e_BECA_E598270EEBD1" visibility="public">
					<memberEnd xmi:idref="EAID_dst93BDB2_46A2_4c2e_BECA_E598270EEBD1"/>
					<memberEnd xmi:idref="EAID_src93BDB2_46A2_4c2e_BECA_E598270EEBD1"/>
					<ownedEnd xmi:type="uml:Property" xmi:id="EAID_src93BDB2_46A2_4c2e_BECA_E598270EEBD1" visibility="public" association="EAID_3E93BDB2_46A2_4c2e_BECA_E598270EEBD1" isOrdered="false" isDerived="false" isDerivedUnion="false" aggregation="none">
						<type xmi:idref="EAID_DB6D4F90_8A74_4253_A05F_15E389F9E7BF"/>
					</ownedEnd>
				</packagedElement>
				<packagedElement xmi:type="uml:Association" xmi:id="EAID_823DDB52_E6E6_40da_B66B_5841F3CA63D9" visibility="public">
					<memberEnd xmi:idref="EAID_dst3DDB52_E6E6_40da_B66B_5841F3CA63D9"/>
					<memberEnd xmi:idref="EAID_src3DDB52_E6E6_40da_B66B_5841F3CA63D9"/>
					<ownedEnd xmi:type="uml:Property" xmi:id="EAID_src3DDB52_E6E6_40da_B66B_5841F3CA63D9" visibility="public" association="EAID_823DDB52_E6E6_40da_B66B_5841F3CA63D9" isOrdered="false" isDerived="false" isDerivedUnion="false" aggregation="none">
						<type xmi:idref="EAID_BE145EF8_3054_4b41_ABF8_23A90BB5F4D2"/>
					</ownedEnd>
				</packagedElement>
				<packagedElement xmi:type="uml:Class" xmi:id="EAID_E6107410_9614_449a_8D2D_E93A9B5DF687" name="Editar" visibility="public">
					<generalization xmi:type="uml:Generalization" xmi:id="EAID_DE36CD73_D70E_41e2_90F5_F3E9C3CF0B62" general="EAID_3162AFD6_616D_4336_AE4C_34EB9D1B3488"/>
				</packagedElement>
				<packagedElement xmi:type="uml:Class" xmi:id="EAID_912BC6F8_FB18_4416_9432_1AD48775676D" name="Estado" visibility="public">
					<ownedAttribute xmi:type="uml:Property" xmi:id="EAID_887EAE32_8241_48b7_9CB2_FD9EED958D79" name="nombre" visibility="private" isDerived="false" isOrdered="false">
						<lowerValue xmi:type="uml:LiteralInteger" xmi:id="EAID_LI000027_8241_48b7_9CB2_FD9EED958D79" value="1"/>
						<upperValue xmi:type="uml:LiteralInteger" xmi:id="EAID_LI000028_8241_48b7_9CB2_FD9EED958D79" value="1"/>
					</ownedAttribute>
					<ownedAttribute xmi:type="uml:Property" xmi:id="EAID_C4E7E61B_0F7A_474a_A539_5D00D54CE9AE" name="descripcion" visibility="private" isDerived="false" isOrdered="false">
						<lowerValue xmi:type="uml:LiteralInteger" xmi:id="EAID_LI000029_0F7A_474a_A539_5D00D54CE9AE" value="1"/>
						<upperValue xmi:type="uml:LiteralInteger" xmi:id="EAID_LI000030_0F7A_474a_A539_5D00D54CE9AE" value="1"/>
					</ownedAttribute>
				</packagedElement>
				<packagedElement xmi:type="uml:Class" xmi:id="EAID_6CB52BAE_49D2_4ea3_81BE_B04CC15BD9AB" name="Formulario" visibility="public">
					<ownedAttribute xmi:type="uml:Property" xmi:id="EAID_737F339A_76C2_4766_8DB5_1DE9515E13A1" name="nombre" visibility="private" isDerived="false" isOrdered="false">
						<lowerValue xmi:type="uml:LiteralInteger" xmi:id="EAID_LI000031_76C2_4766_8DB5_1DE9515E13A1" value="1"/>
						<upperValue xmi:type="uml:LiteralInteger" xmi:id="EAID_LI000032_76C2_4766_8DB5_1DE9515E13A1" value="1"/>
					</ownedAttribute>
					<ownedAttribute xmi:type="uml:Property" xmi:id="EAID_86565F35_BA08_4695_801A_502BE648DD37" name="descripcion" visibility="private" isDerived="false" isOrdered="false">
						<lowerValue xmi:type="uml:LiteralInteger" xmi:id="EAID_LI000033_BA08_4695_801A_502BE648DD37" value="1"/>
						<upperValue xmi:type="uml:LiteralInteger" xmi:id="EAID_LI000034_BA08_4695_801A_502BE648DD37" value="1"/>
					</ownedAttribute>
				</packagedElement>
				<packagedElement xmi:type="uml:Association" xmi:id="EAID_AFD12064_D744_416c_9929_463B66BB4502" visibility="public">
					<memberEnd xmi:idref="EAID_dstD12064_D744_416c_9929_463B66BB4502"/>
					<ownedEnd xmi:type="uml:Property" xmi:id="EAID_dstD12064_D744_416c_9929_463B66BB4502" visibility="public" association="EAID_AFD12064_D744_416c_9929_463B66BB4502" isOrdered="false" isDerived="false" isDerivedUnion="false" aggregation="none">
						<type xmi:idref="EAID_7B8740F5_412B_4150_91DF_8C3A06A3C5FB"/>
						<lowerValue xmi:type="uml:LiteralInteger" xmi:id="EAID_DL000000_D744_416c_9929_463B66BB4502" value="0"/>
						<upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="EAID_DU000000_D744_416c_9929_463B66BB4502" value="-1"/>
					</ownedEnd>
					<memberEnd xmi:idref="EAID_srcD12064_D744_416c_9929_463B66BB4502"/>
					<ownedEnd xmi:type="uml:Property" xmi:id="EAID_srcD12064_D744_416c_9929_463B66BB4502" visibility="public" association="EAID_AFD12064_D744_416c_9929_463B66BB4502" isOrdered="false" isDerived="false" isDerivedUnion="false" aggregation="none">
						<type xmi:idref="EAID_6CB52BAE_49D2_4ea3_81BE_B04CC15BD9AB"/>
						<lowerValue xmi:type="uml:LiteralInteger" xmi:id="EAID_SL000000_D744_416c_9929_463B66BB4502" value="1"/>
						<upperValue xmi:type="uml:LiteralInteger" xmi:id="EAID_SU000000_D744_416c_9929_463B66BB4502" value="1"/>
					</ownedEnd>
				</packagedElement>
				<packagedElement xmi:type="uml:Association" xmi:id="EAID_FF0A3986_CAC6_4a7c_8BF8_8566749F83C7" visibility="public">
					<memberEnd xmi:idref="EAID_dst0A3986_CAC6_4a7c_8BF8_8566749F83C7"/>
					<memberEnd xmi:idref="EAID_src0A3986_CAC6_4a7c_8BF8_8566749F83C7"/>
					<ownedEnd xmi:type="uml:Property" xmi:id="EAID_src0A3986_CAC6_4a7c_8BF8_8566749F83C7" visibility="public" association="EAID_FF0A3986_CAC6_4a7c_8BF8_8566749F83C7" isOrdered="false" isDerived="false" isDerivedUnion="false" aggregation="none">
						<type xmi:idref="EAID_DB6D4F90_8A74_4253_A05F_15E389F9E7BF"/>
						<lowerValue xmi:type="uml:LiteralInteger" xmi:id="EAID_SL000000_CAC6_4a7c_8BF8_8566749F83C7" value="1"/>
						<upperValue xmi:type="uml:LiteralInteger" xmi:id="EAID_SU000000_CAC6_4a7c_8BF8_8566749F83C7" value="1"/>
					</ownedEnd>
					<ownedEnd xmi:type="uml:Property" xmi:id="EAID_dst0A3986_CAC6_4a7c_8BF8_8566749F83C7" visibility="public" association="EAID_FF0A3986_CAC6_4a7c_8BF8_8566749F83C7" isOrdered="false" isDerived="false" isDerivedUnion="false" aggregation="none">
						<type xmi:idref="EAID_6CB52BAE_49D2_4ea3_81BE_B04CC15BD9AB"/>
						<lowerValue xmi:type="uml:LiteralInteger" xmi:id="EAID_DL000000_CAC6_4a7c_8BF8_8566749F83C7" value="1"/>
						<upperValue xmi:type="uml:LiteralInteger" xmi:id="EAID_DU000000_CAC6_4a7c_8BF8_8566749F83C7" value="1"/>
					</ownedEnd>
				</packagedElement>
				<packagedElement xmi:type="uml:Class" xmi:id="EAID_22B30324_7B92_4f0f_8E5B_235CC3C311DB" name="Grupo" visibility="public">
					<ownedAttribute xmi:type="uml:Property" xmi:id="EAID_8AE032DD_F040_4f25_A1F9_BEFC897B178B" name="nombre" visibility="private" isDerived="false" isOrdered="false">
						<lowerValue xmi:type="uml:LiteralInteger" xmi:id="EAID_LI000035_F040_4f25_A1F9_BEFC897B178B" value="1"/>
						<upperValue xmi:type="uml:LiteralInteger" xmi:id="EAID_LI000036_F040_4f25_A1F9_BEFC897B178B" value="1"/>
					</ownedAttribute>
				</packagedElement>
				<packagedElement xmi:type="uml:Association" xmi:id="EAID_5F1DD95D_E546_4b97_89F3_A85E61203D8E" visibility="public">
					<memberEnd xmi:idref="EAID_dst1DD95D_E546_4b97_89F3_A85E61203D8E"/>
					<ownedEnd xmi:type="uml:Property" xmi:id="EAID_dst1DD95D_E546_4b97_89F3_A85E61203D8E" visibility="public" association="EAID_5F1DD95D_E546_4b97_89F3_A85E61203D8E" isOrdered="false" isDerived="false" isDerivedUnion="false" aggregation="none">
						<type xmi:idref="EAID_45EC5E8D_6B18_47cd_89C8_75BCE1502DE1"/>
						<lowerValue xmi:type="uml:LiteralInteger" xmi:id="EAID_DL000000_E546_4b97_89F3_A85E61203D8E" value="0"/>
						<upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="EAID_DU000000_E546_4b97_89F3_A85E61203D8E" value="-1"/>
					</ownedEnd>
					<memberEnd xmi:idref="EAID_src1DD95D_E546_4b97_89F3_A85E61203D8E"/>
					<ownedEnd xmi:type="uml:Property" xmi:id="EAID_src1DD95D_E546_4b97_89F3_A85E61203D8E" visibility="public" association="EAID_5F1DD95D_E546_4b97_89F3_A85E61203D8E" isOrdered="false" isDerived="false" isDerivedUnion="false" aggregation="none">
						<type xmi:idref="EAID_22B30324_7B92_4f0f_8E5B_235CC3C311DB"/>
						<lowerValue xmi:type="uml:LiteralInteger" xmi:id="EAID_SL000000_E546_4b97_89F3_A85E61203D8E" value="0"/>
						<upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="EAID_SU000000_E546_4b97_89F3_A85E61203D8E" value="-1"/>
					</ownedEnd>
				</packagedElement>
				<packagedElement xmi:type="uml:Association" xmi:id="EAID_6AF2F907_A5DB_47ad_B51F_194EF29CA96D" visibility="public">
					<memberEnd xmi:idref="EAID_dstF2F907_A5DB_47ad_B51F_194EF29CA96D"/>
					<ownedEnd xmi:type="uml:Property" xmi:id="EAID_dstF2F907_A5DB_47ad_B51F_194EF29CA96D" visibility="public" association="EAID_6AF2F907_A5DB_47ad_B51F_194EF29CA96D" isOrdered="false" isDerived="false" isDerivedUnion="false" aggregation="none">
						<type xmi:idref="EAID_D6358D5E_863D_44a7_96D9_9C3E91364044"/>
						<lowerValue xmi:type="uml:LiteralInteger" xmi:id="EAID_DL000000_A5DB_47ad_B51F_194EF29CA96D" value="1"/>
						<upperValue xmi:type="uml:LiteralInteger" xmi:id="EAID_DU000000_A5DB_47ad_B51F_194EF29CA96D" value="1"/>
					</ownedEnd>
					<memberEnd xmi:idref="EAID_srcF2F907_A5DB_47ad_B51F_194EF29CA96D"/>
					<ownedEnd xmi:type="uml:Property" xmi:id="EAID_srcF2F907_A5DB_47ad_B51F_194EF29CA96D" visibility="public" association="EAID_6AF2F907_A5DB_47ad_B51F_194EF29CA96D" isOrdered="false" isDerived="false" isDerivedUnion="false" aggregation="none">
						<type xmi:idref="EAID_22B30324_7B92_4f0f_8E5B_235CC3C311DB"/>
						<lowerValue xmi:type="uml:LiteralInteger" xmi:id="EAID_SL000000_A5DB_47ad_B51F_194EF29CA96D" value="1"/>
						<upperValue xmi:type="uml:LiteralInteger" xmi:id="EAID_SU000000_A5DB_47ad_B51F_194EF29CA96D" value="1"/>
					</ownedEnd>
				</packagedElement>
				<packagedElement xmi:type="uml:Class" xmi:id="EAID_D177CECD_84CC_4aaf_990C_380C7A16A55B" name="MaquinaEstado" visibility="public">
					<ownedAttribute xmi:type="uml:Property" xmi:id="EAID_317E624A_8572_4088_A9CD_9E7850496265" name="codigo" visibility="private" isDerived="false" isOrdered="false">
						<lowerValue xmi:type="uml:LiteralInteger" xmi:id="EAID_LI000037_8572_4088_A9CD_9E7850496265" value="1"/>
						<upperValue xmi:type="uml:LiteralInteger" xmi:id="EAID_LI000038_8572_4088_A9CD_9E7850496265" value="1"/>
					</ownedAttribute>
					<ownedAttribute xmi:type="uml:Property" xmi:id="EAID_DD60EE9C_4E36_4279_A015_167BEBDCC25F" name="descripcion" visibility="private" isDerived="false" isOrdered="false">
						<lowerValue xmi:type="uml:LiteralInteger" xmi:id="EAID_LI000039_4E36_4279_A015_167BEBDCC25F" value="1"/>
						<upperValue xmi:type="uml:LiteralInteger" xmi:id="EAID_LI000040_4E36_4279_A015_167BEBDCC25F" value="1"/>
					</ownedAttribute>
					<ownedAttribute xmi:type="uml:Property" xmi:id="EAID_7A8B2CFE_F011_46b5_BE9E_E9EE51E34814" name="nombre" visibility="private" isDerived="false" isOrdered="false">
						<lowerValue xmi:type="uml:LiteralInteger" xmi:id="EAID_LI000041_F011_46b5_BE9E_E9EE51E34814" value="1"/>
						<upperValue xmi:type="uml:LiteralInteger" xmi:id="EAID_LI000042_F011_46b5_BE9E_E9EE51E34814" value="1"/>
					</ownedAttribute>
					<ownedAttribute xmi:type="uml:Property" xmi:id="EAID_8C7385A5_B452_4391_8455_F7C6D771EB77" name="numero" visibility="private" isDerived="false" isOrdered="false">
						<lowerValue xmi:type="uml:LiteralInteger" xmi:id="EAID_LI000043_B452_4391_8455_F7C6D771EB77" value="1"/>
						<upperValue xmi:type="uml:LiteralInteger" xmi:id="EAID_LI000044_B452_4391_8455_F7C6D771EB77" value="1"/>
					</ownedAttribute>
					<ownedAttribute xmi:type="uml:Property" xmi:id="EAID_dst77B922_B452_4cfe_A7E4_EDADC5EB5EDF" visibility="public" association="EAID_4B77B922_B452_4cfe_A7E4_EDADC5EB5EDF" isOrdered="false" isDerived="false" isDerivedUnion="false" aggregation="none">
						<type xmi:idref="EAID_38C8A964_D4EB_4cd2_A707_757CDE9EC9EC"/>
						<lowerValue xmi:type="uml:LiteralInteger" xmi:id="EAID_DL000000_B452_4cfe_A7E4_EDADC5EB5EDF" value="1"/>
						<upperValue xmi:type="uml:LiteralInteger" xmi:id="EAID_DU000000_B452_4cfe_A7E4_EDADC5EB5EDF" value="1"/>
					</ownedAttribute>
				</packagedElement>
				<packagedElement xmi:type="uml:Association" xmi:id="EAID_D27CC9E9_DAE1_4e24_AD83_A04C4844AD24" visibility="public">
					<memberEnd xmi:idref="EAID_dst7CC9E9_DAE1_4e24_AD83_A04C4844AD24"/>
					<ownedEnd xmi:type="uml:Property" xmi:id="EAID_dst7CC9E9_DAE1_4e24_AD83_A04C4844AD24" visibility="public" association="EAID_D27CC9E9_DAE1_4e24_AD83_A04C4844AD24" isOrdered="false" isDerived="false" isDerivedUnion="false" aggregation="none">
						<type xmi:idref="EAID_D177CECD_84CC_4aaf_990C_380C7A16A55B"/>
						<lowerValue xmi:type="uml:LiteralInteger" xmi:id="EAID_DL000000_DAE1_4e24_AD83_A04C4844AD24" value="0"/>
						<upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="EAID_DU000000_DAE1_4e24_AD83_A04C4844AD24" value="-1"/>
					</ownedEnd>
					<memberEnd xmi:idref="EAID_src7CC9E9_DAE1_4e24_AD83_A04C4844AD24"/>
					<ownedEnd xmi:type="uml:Property" xmi:id="EAID_src7CC9E9_DAE1_4e24_AD83_A04C4844AD24" visibility="public" association="EAID_D27CC9E9_DAE1_4e24_AD83_A04C4844AD24" isOrdered="false" isDerived="false" isDerivedUnion="false" aggregation="none">
						<type xmi:idref="EAID_D177CECD_84CC_4aaf_990C_380C7A16A55B"/>
						<lowerValue xmi:type="uml:LiteralInteger" xmi:id="EAID_SL000000_DAE1_4e24_AD83_A04C4844AD24" value="1"/>
						<upperValue xmi:type="uml:LiteralInteger" xmi:id="EAID_SU000000_DAE1_4e24_AD83_A04C4844AD24" value="1"/>
					</ownedEnd>
				</packagedElement>
				<packagedElement xmi:type="uml:Association" xmi:id="EAID_B1F885E5_5EA6_4607_BD57_C2659E7B9099" visibility="public">
					<memberEnd xmi:idref="EAID_dstF885E5_5EA6_4607_BD57_C2659E7B9099"/>
					<memberEnd xmi:idref="EAID_srcF885E5_5EA6_4607_BD57_C2659E7B9099"/>
					<ownedEnd xmi:type="uml:Property" xmi:id="EAID_srcF885E5_5EA6_4607_BD57_C2659E7B9099" visibility="public" association="EAID_B1F885E5_5EA6_4607_BD57_C2659E7B9099" isOrdered="false" isDerived="false" isDerivedUnion="false" aggregation="none">
						<type xmi:idref="EAID_BE145EF8_3054_4b41_ABF8_23A90BB5F4D2"/>
						<lowerValue xmi:type="uml:LiteralInteger" xmi:id="EAID_SL000000_5EA6_4607_BD57_C2659E7B9099" value="0"/>
						<upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="EAID_SU000000_5EA6_4607_BD57_C2659E7B9099" value="-1"/>
					</ownedEnd>
					<ownedEnd xmi:type="uml:Property" xmi:id="EAID_dstF885E5_5EA6_4607_BD57_C2659E7B9099" visibility="public" association="EAID_B1F885E5_5EA6_4607_BD57_C2659E7B9099" isOrdered="false" isDerived="false" isDerivedUnion="false" aggregation="none">
						<type xmi:idref="EAID_D177CECD_84CC_4aaf_990C_380C7A16A55B"/>
						<lowerValue xmi:type="uml:LiteralInteger" xmi:id="EAID_DL000000_5EA6_4607_BD57_C2659E7B9099" value="1"/>
						<upperValue xmi:type="uml:LiteralInteger" xmi:id="EAID_DU000000_5EA6_4607_BD57_C2659E7B9099" value="1"/>
					</ownedEnd>
				</packagedElement>
				<packagedElement xmi:type="uml:Class" xmi:id="EAID_3162AFD6_616D_4336_AE4C_34EB9D1B3488" name="Operacion" visibility="public">
					<ownedAttribute xmi:type="uml:Property" xmi:id="EAID_A088C7E5_0338_44b3_8491_7B97C9C861AB" name="clase" visibility="private" isDerived="false" isOrdered="false">
						<lowerValue xmi:type="uml:LiteralInteger" xmi:id="EAID_LI000045_0338_44b3_8491_7B97C9C861AB" value="1"/>
						<upperValue xmi:type="uml:LiteralInteger" xmi:id="EAID_LI000046_0338_44b3_8491_7B97C9C861AB" value="1"/>
					</ownedAttribute>
					<ownedAttribute xmi:type="uml:Property" xmi:id="EAID_6043F0B9_FC75_4e7a_815B_CDBC6D7C8795" name="variable" visibility="private" isDerived="false" isOrdered="false">
						<lowerValue xmi:type="uml:LiteralInteger" xmi:id="EAID_LI000047_FC75_4e7a_815B_CDBC6D7C8795" value="1"/>
						<upperValue xmi:type="uml:LiteralInteger" xmi:id="EAID_LI000048_FC75_4e7a_815B_CDBC6D7C8795" value="1"/>
					</ownedAttribute>
				</packagedElement>
				<packagedElement xmi:type="uml:Dependency" xmi:id="EAID_A0B1B089_F217_4d63_9D88_FACF60C1156B" name="PoliticaPermisos actual" visibility="public" supplier="EAID_1B36C7BA_F634_4898_879E_D309C09CC6D0" client="EAID_3162AFD6_616D_4336_AE4C_34EB9D1B3488"/>
				<packagedElement xmi:type="uml:Association" xmi:id="EAID_981508D0_5373_4349_A263_5D78463468D6" name="permisos sobre objetos" visibility="public">
					<memberEnd xmi:idref="EAID_dst1508D0_5373_4349_A263_5D78463468D6"/>
					<memberEnd xmi:idref="EAID_src1508D0_5373_4349_A263_5D78463468D6"/>
					<ownedEnd xmi:type="uml:Property" xmi:id="EAID_src1508D0_5373_4349_A263_5D78463468D6" visibility="public" association="EAID_981508D0_5373_4349_A263_5D78463468D6" isOrdered="false" isDerived="false" isDerivedUnion="false" aggregation="none">
						<type xmi:idref="EAID_D6358D5E_863D_44a7_96D9_9C3E91364044"/>
						<lowerValue xmi:type="uml:LiteralInteger" xmi:id="EAID_SL000000_5373_4349_A263_5D78463468D6" value="0"/>
						<upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="EAID_SU000000_5373_4349_A263_5D78463468D6" value="-1"/>
					</ownedEnd>
					<ownedEnd xmi:type="uml:Property" xmi:id="EAID_dst1508D0_5373_4349_A263_5D78463468D6" visibility="public" association="EAID_981508D0_5373_4349_A263_5D78463468D6" isOrdered="false" isDerived="false" isDerivedUnion="false" aggregation="none">
						<type xmi:idref="EAID_3162AFD6_616D_4336_AE4C_34EB9D1B3488"/>
						<lowerValue xmi:type="uml:LiteralInteger" xmi:id="EAID_DL000000_5373_4349_A263_5D78463468D6" value="0"/>
						<upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="EAID_DU000000_5373_4349_A263_5D78463468D6" value="-1"/>
					</ownedEnd>
				</packagedElement>
				<packagedElement xmi:type="uml:Class" xmi:id="EAID_AFEEBDB2_0B99_427c_BAC5_50B68B2A1C48" name="Organismo" visibility="public">
					<ownedAttribute xmi:type="uml:Property" xmi:id="EAID_9849CD59_ACFA_4f52_B780_DD42D4384DCB" name="nombre" visibility="private" isDerived="false" isOrdered="false">
						<lowerValue xmi:type="uml:LiteralInteger" xmi:id="EAID_LI000049_ACFA_4f52_B780_DD42D4384DCB" value="1"/>
						<upperValue xmi:type="uml:LiteralInteger" xmi:id="EAID_LI000050_ACFA_4f52_B780_DD42D4384DCB" value="1"/>
					</ownedAttribute>
					<ownedAttribute xmi:type="uml:Property" xmi:id="EAID_7ACD5141_CF9D_4329_B40E_3A3F60055251" name="inciso" visibility="private" isDerived="false" isOrdered="false">
						<lowerValue xmi:type="uml:LiteralInteger" xmi:id="EAID_LI000051_CF9D_4329_B40E_3A3F60055251" value="1"/>
						<upperValue xmi:type="uml:LiteralInteger" xmi:id="EAID_LI000052_CF9D_4329_B40E_3A3F60055251" value="1"/>
					</ownedAttribute>
					<ownedAttribute xmi:type="uml:Property" xmi:id="EAID_F50405BC_E7CA_43a6_91A1_CE8899E5C900" name="unidadEjecutora" visibility="private" isDerived="false" isOrdered="false">
						<lowerValue xmi:type="uml:LiteralInteger" xmi:id="EAID_LI000053_E7CA_43a6_91A1_CE8899E5C900" value="1"/>
						<upperValue xmi:type="uml:LiteralInteger" xmi:id="EAID_LI000054_E7CA_43a6_91A1_CE8899E5C900" value="1"/>
					</ownedAttribute>
				</packagedElement>
				<packagedElement xmi:type="uml:Association" xmi:id="EAID_C7788AF2_4D96_46cd_8B26_96CD81D95752" visibility="public">
					<memberEnd xmi:idref="EAID_dst788AF2_4D96_46cd_8B26_96CD81D95752"/>
					<ownedEnd xmi:type="uml:Property" xmi:id="EAID_dst788AF2_4D96_46cd_8B26_96CD81D95752" visibility="public" association="EAID_C7788AF2_4D96_46cd_8B26_96CD81D95752" isOrdered="false" isDerived="false" isDerivedUnion="false" aggregation="none">
						<type xmi:idref="EAID_DB6D4F90_8A74_4253_A05F_15E389F9E7BF"/>
						<lowerValue xmi:type="uml:LiteralInteger" xmi:id="EAID_DL000000_4D96_46cd_8B26_96CD81D95752" value="0"/>
						<upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="EAID_DU000000_4D96_46cd_8B26_96CD81D95752" value="-1"/>
					</ownedEnd>
					<memberEnd xmi:idref="EAID_src788AF2_4D96_46cd_8B26_96CD81D95752"/>
					<ownedEnd xmi:type="uml:Property" xmi:id="EAID_src788AF2_4D96_46cd_8B26_96CD81D95752" visibility="public" association="EAID_C7788AF2_4D96_46cd_8B26_96CD81D95752" isOrdered="false" isDerived="false" isDerivedUnion="false" aggregation="none">
						<type xmi:idref="EAID_AFEEBDB2_0B99_427c_BAC5_50B68B2A1C48"/>
						<lowerValue xmi:type="uml:LiteralInteger" xmi:id="EAID_SL000000_4D96_46cd_8B26_96CD81D95752" value="1"/>
						<upperValue xmi:type="uml:LiteralInteger" xmi:id="EAID_SU000000_4D96_46cd_8B26_96CD81D95752" value="1"/>
					</ownedEnd>
				</packagedElement>
				<packagedElement xmi:type="uml:Association" xmi:id="EAID_E9AED687_E073_42f0_9721_0034CE06B021" visibility="public">
					<memberEnd xmi:idref="EAID_dstAED687_E073_42f0_9721_0034CE06B021"/>
					<ownedEnd xmi:type="uml:Property" xmi:id="EAID_dstAED687_E073_42f0_9721_0034CE06B021" visibility="public" association="EAID_E9AED687_E073_42f0_9721_0034CE06B021" isOrdered="false" isDerived="false" isDerivedUnion="false" aggregation="none">
						<type xmi:idref="EAID_1E20EBB1_2E74_4f5a_9D4F_ABCBC4FA9468"/>
						<lowerValue xmi:type="uml:LiteralInteger" xmi:id="EAID_DL000000_E073_42f0_9721_0034CE06B021" value="0"/>
						<upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="EAID_DU000000_E073_42f0_9721_0034CE06B021" value="-1"/>
					</ownedEnd>
					<memberEnd xmi:idref="EAID_srcAED687_E073_42f0_9721_0034CE06B021"/>
					<ownedEnd xmi:type="uml:Property" xmi:id="EAID_srcAED687_E073_42f0_9721_0034CE06B021" visibility="public" association="EAID_E9AED687_E073_42f0_9721_0034CE06B021" isOrdered="false" isDerived="false" isDerivedUnion="false" aggregation="none">
						<type xmi:idref="EAID_AFEEBDB2_0B99_427c_BAC5_50B68B2A1C48"/>
						<lowerValue xmi:type="uml:LiteralInteger" xmi:id="EAID_SL000000_E073_42f0_9721_0034CE06B021" value="1"/>
						<upperValue xmi:type="uml:LiteralInteger" xmi:id="EAID_SU000000_E073_42f0_9721_0034CE06B021" value="1"/>
					</ownedEnd>
				</packagedElement>
				<packagedElement xmi:type="uml:Class" xmi:id="EAID_6C8173D9_7C14_443b_BA64_2EF4ECB491A4" name="Permiso" visibility="public">
					<generalization xmi:type="uml:Generalization" xmi:id="EAID_A580BC3B_9F70_411f_BE46_97C7D71D18A8" general="EAID_1B36C7BA_F634_4898_879E_D309C09CC6D0"/>
				</packagedElement>
				<packagedElement xmi:type="uml:Class" xmi:id="EAID_45EC5E8D_6B18_47cd_89C8_75BCE1502DE1" name="Persona" visibility="public">
					<ownedAttribute xmi:type="uml:Property" xmi:id="EAID_D61EA8DE_656A_4e68_BEAA_854EC3B779CB" name="apellido" visibility="private" isDerived="false" isOrdered="false">
						<lowerValue xmi:type="uml:LiteralInteger" xmi:id="EAID_LI000055_656A_4e68_BEAA_854EC3B779CB" value="1"/>
						<upperValue xmi:type="uml:LiteralInteger" xmi:id="EAID_LI000056_656A_4e68_BEAA_854EC3B779CB" value="1"/>
					</ownedAttribute>
					<ownedAttribute xmi:type="uml:Property" xmi:id="EAID_E14443D0_9366_42a1_AEDD_0813DA398A54" name="clave" visibility="private" isDerived="false" isOrdered="false">
						<lowerValue xmi:type="uml:LiteralInteger" xmi:id="EAID_LI000057_9366_42a1_AEDD_0813DA398A54" value="1"/>
						<upperValue xmi:type="uml:LiteralInteger" xmi:id="EAID_LI000058_9366_42a1_AEDD_0813DA398A54" value="1"/>
					</ownedAttribute>
					<ownedAttribute xmi:type="uml:Property" xmi:id="EAID_3C699B44_3268_45e8_8B13_C18FFEA41774" name="mail" visibility="private" isDerived="false" isOrdered="false">
						<lowerValue xmi:type="uml:LiteralInteger" xmi:id="EAID_LI000059_3268_45e8_8B13_C18FFEA41774" value="1"/>
						<upperValue xmi:type="uml:LiteralInteger" xmi:id="EAID_LI000060_3268_45e8_8B13_C18FFEA41774" value="1"/>
					</ownedAttribute>
					<ownedAttribute xmi:type="uml:Property" xmi:id="EAID_3C67FDC4_4756_4d81_83D5_31DC8E67B27B" name="nombre" visibility="private" isDerived="false" isOrdered="false">
						<lowerValue xmi:type="uml:LiteralInteger" xmi:id="EAID_LI000061_4756_4d81_83D5_31DC8E67B27B" value="1"/>
						<upperValue xmi:type="uml:LiteralInteger" xmi:id="EAID_LI000062_4756_4d81_83D5_31DC8E67B27B" value="1"/>
					</ownedAttribute>
					<ownedAttribute xmi:type="uml:Property" xmi:id="EAID_1B16BD85_3A48_45c5_ABBC_03CC74DBF3DF" name="telefono" visibility="private" isDerived="false" isOrdered="false">
						<lowerValue xmi:type="uml:LiteralInteger" xmi:id="EAID_LI000063_3A48_45c5_ABBC_03CC74DBF3DF" value="1"/>
						<upperValue xmi:type="uml:LiteralInteger" xmi:id="EAID_LI000064_3A48_45c5_ABBC_03CC74DBF3DF" value="1"/>
					</ownedAttribute>
					<ownedAttribute xmi:type="uml:Property" xmi:id="EAID_1990081E_70AD_4a93_B739_F8FF7C33EA75" name="celular" visibility="private" isDerived="false" isOrdered="false">
						<lowerValue xmi:type="uml:LiteralInteger" xmi:id="EAID_LI000065_70AD_4a93_B739_F8FF7C33EA75" value="1"/>
						<upperValue xmi:type="uml:LiteralInteger" xmi:id="EAID_LI000066_70AD_4a93_B739_F8FF7C33EA75" value="1"/>
					</ownedAttribute>
				</packagedElement>
				<packagedElement xmi:type="uml:Class" xmi:id="EAID_1E20EBB1_2E74_4f5a_9D4F_ABCBC4FA9468" name="PersonaRegistro" visibility="public">
					<generalization xmi:type="uml:Generalization" xmi:id="EAID_E9EFA9B0_AA4B_47bb_B785_823C4F0363D6" general="EAID_45EC5E8D_6B18_47cd_89C8_75BCE1502DE1"/>
				</packagedElement>
				<packagedElement xmi:type="uml:Association" xmi:id="EAID_ED27E60E_B56F_4457_ABE5_417D16E8B5CD" visibility="public">
					<memberEnd xmi:idref="EAID_dst27E60E_B56F_4457_ABE5_417D16E8B5CD"/>
					<memberEnd xmi:idref="EAID_src27E60E_B56F_4457_ABE5_417D16E8B5CD"/>
					<ownedEnd xmi:type="uml:Property" xmi:id="EAID_src27E60E_B56F_4457_ABE5_417D16E8B5CD" visibility="public" association="EAID_ED27E60E_B56F_4457_ABE5_417D16E8B5CD" isOrdered="false" isDerived="false" isDerivedUnion="false" aggregation="none">
						<type xmi:idref="EAID_DB6D4F90_8A74_4253_A05F_15E389F9E7BF"/>
						<lowerValue xmi:type="uml:LiteralInteger" xmi:id="EAID_SL000000_B56F_4457_ABE5_417D16E8B5CD" value="0"/>
						<upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="EAID_SU000000_B56F_4457_ABE5_417D16E8B5CD" value="-1"/>
					</ownedEnd>
					<ownedEnd xmi:type="uml:Property" xmi:id="EAID_dst27E60E_B56F_4457_ABE5_417D16E8B5CD" visibility="public" association="EAID_ED27E60E_B56F_4457_ABE5_417D16E8B5CD" isOrdered="false" isDerived="false" isDerivedUnion="false" aggregation="none">
						<type xmi:idref="EAID_1E20EBB1_2E74_4f5a_9D4F_ABCBC4FA9468"/>
						<lowerValue xmi:type="uml:LiteralInteger" xmi:id="EAID_DL000000_B56F_4457_ABE5_417D16E8B5CD" value="1"/>
						<upperValue xmi:type="uml:LiteralInteger" xmi:id="EAID_DU000000_B56F_4457_ABE5_417D16E8B5CD" value="1"/>
					</ownedEnd>
				</packagedElement>
				<packagedElement xmi:type="uml:Class" xmi:id="EAID_1B36C7BA_F634_4898_879E_D309C09CC6D0" name="PoliticaPermisos" visibility="public"/>
				<packagedElement xmi:type="uml:Class" xmi:id="EAID_FE7F224E_CFE5_4b65_955B_7C2F6DA74495" name="ProcesoRegistro" visibility="public">
					<generalization xmi:type="uml:Generalization" xmi:id="EAID_B64D968A_3739_4811_ADAA_E6D8B216885A" general="EAID_D177CECD_84CC_4aaf_990C_380C7A16A55B"/>
				</packagedElement>
				<packagedElement xmi:type="uml:Association" xmi:id="EAID_E9C5BCDE_0BA6_4394_AA09_4B6F7230BEB8" visibility="public">
					<memberEnd xmi:idref="EAID_dstC5BCDE_0BA6_4394_AA09_4B6F7230BEB8"/>
					<memberEnd xmi:idref="EAID_srcC5BCDE_0BA6_4394_AA09_4B6F7230BEB8"/>
					<ownedEnd xmi:type="uml:Property" xmi:id="EAID_srcC5BCDE_0BA6_4394_AA09_4B6F7230BEB8" visibility="public" association="EAID_E9C5BCDE_0BA6_4394_AA09_4B6F7230BEB8" isOrdered="false" isDerived="false" isDerivedUnion="false" aggregation="none">
						<type xmi:idref="EAID_DB6D4F90_8A74_4253_A05F_15E389F9E7BF"/>
						<lowerValue xmi:type="uml:LiteralInteger" xmi:id="EAID_SL000000_0BA6_4394_AA09_4B6F7230BEB8" value="0"/>
						<upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="EAID_SU000000_0BA6_4394_AA09_4B6F7230BEB8" value="-1"/>
					</ownedEnd>
					<ownedEnd xmi:type="uml:Property" xmi:id="EAID_dstC5BCDE_0BA6_4394_AA09_4B6F7230BEB8" visibility="public" association="EAID_E9C5BCDE_0BA6_4394_AA09_4B6F7230BEB8" isOrdered="false" isDerived="false" isDerivedUnion="false" aggregation="none">
						<type xmi:idref="EAID_FE7F224E_CFE5_4b65_955B_7C2F6DA74495"/>
						<lowerValue xmi:type="uml:LiteralInteger" xmi:id="EAID_DL000000_0BA6_4394_AA09_4B6F7230BEB8" value="1"/>
						<upperValue xmi:type="uml:LiteralInteger" xmi:id="EAID_DU000000_0BA6_4394_AA09_4B6F7230BEB8" value="1"/>
					</ownedEnd>
				</packagedElement>
				<packagedElement xmi:type="uml:Class" xmi:id="EAID_DB6D4F90_8A74_4253_A05F_15E389F9E7BF" name="Registro" visibility="public">
					<ownedAttribute xmi:type="uml:Property" xmi:id="EAID_B73F6A58_27E6_469a_A0C9_117453A94555" name="id" visibility="private" isDerived="false" isOrdered="false">
						<lowerValue xmi:type="uml:LiteralInteger" xmi:id="EAID_LI000067_27E6_469a_A0C9_117453A94555" value="1"/>
						<upperValue xmi:type="uml:LiteralInteger" xmi:id="EAID_LI000068_27E6_469a_A0C9_117453A94555" value="1"/>
					</ownedAttribute>
					<ownedAttribute xmi:type="uml:Property" xmi:id="EAID_D29A48F0_3CCD_4e96_895C_7E5D77A642F8" name="fechaHoraCreado" visibility="private" isDerived="false" isOrdered="false">
						<lowerValue xmi:type="uml:LiteralInteger" xmi:id="EAID_LI000069_3CCD_4e96_895C_7E5D77A642F8" value="1"/>
						<upperValue xmi:type="uml:LiteralInteger" xmi:id="EAID_LI000070_3CCD_4e96_895C_7E5D77A642F8" value="1"/>
					</ownedAttribute>
					<ownedAttribute xmi:type="uml:Property" xmi:id="EAID_810A5048_89B7_4e97_951E_F9174094C432" name="descripcion" visibility="private" isDerived="false" isOrdered="false">
						<lowerValue xmi:type="uml:LiteralInteger" xmi:id="EAID_LI000071_89B7_4e97_951E_F9174094C432" value="1"/>
						<upperValue xmi:type="uml:LiteralInteger" xmi:id="EAID_LI000072_89B7_4e97_951E_F9174094C432" value="1"/>
					</ownedAttribute>
					<ownedAttribute xmi:type="uml:Property" xmi:id="EAID_6372404F_7491_4f49_B86F_8016B5836C1D" name="procesarAutomaticamente" visibility="private" isDerived="false" isOrdered="false">
						<lowerValue xmi:type="uml:LiteralInteger" xmi:id="EAID_LI000073_7491_4f49_B86F_8016B5836C1D" value="1"/>
						<upperValue xmi:type="uml:LiteralInteger" xmi:id="EAID_LI000074_7491_4f49_B86F_8016B5836C1D" value="1"/>
					</ownedAttribute>
					<ownedAttribute xmi:type="uml:Property" xmi:id="EAID_dst93BDB2_46A2_4c2e_BECA_E598270EEBD1" visibility="public" association="EAID_3E93BDB2_46A2_4c2e_BECA_E598270EEBD1" isOrdered="false" isDerived="false" isDerivedUnion="false" aggregation="none">
						<type xmi:idref="EAID_494A45F6_51BE_4989_9E35_69DB61EC1EB4"/>
						<lowerValue xmi:type="uml:LiteralInteger" xmi:id="EAID_DL000000_46A2_4c2e_BECA_E598270EEBD1" value="0"/>
						<upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="EAID_DU000000_46A2_4c2e_BECA_E598270EEBD1" value="-1"/>
					</ownedAttribute>
				</packagedElement>
				<packagedElement xmi:type="uml:Class" xmi:id="EAID_86E9893F_8AEA_4493_BD1D_554C280E0A34" name="Restriccion" visibility="public">
					<generalization xmi:type="uml:Generalization" xmi:id="EAID_0163DA6E_2073_4ab5_8721_A3BE228736E0" general="EAID_1B36C7BA_F634_4898_879E_D309C09CC6D0"/>
				</packagedElement>
				<packagedElement xmi:type="uml:Class" xmi:id="EAID_D6358D5E_863D_44a7_96D9_9C3E91364044" name="Rol" visibility="public">
					<ownedAttribute xmi:type="uml:Property" xmi:id="EAID_7405EE86_44C1_4dc0_9ACA_4B1E58294565" name="nombre" visibility="private" isDerived="false" isOrdered="false">
						<lowerValue xmi:type="uml:LiteralInteger" xmi:id="EAID_LI000075_44C1_4dc0_9ACA_4B1E58294565" value="1"/>
						<upperValue xmi:type="uml:LiteralInteger" xmi:id="EAID_LI000076_44C1_4dc0_9ACA_4B1E58294565" value="1"/>
					</ownedAttribute>
					<ownedAttribute xmi:type="uml:Property" xmi:id="EAID_4F1FD88C_2A55_4e4d_A88F_463B9A6B7701" name="descripcion" visibility="private" isDerived="false" isOrdered="false">
						<lowerValue xmi:type="uml:LiteralInteger" xmi:id="EAID_LI000077_2A55_4e4d_A88F_463B9A6B7701" value="1"/>
						<upperValue xmi:type="uml:LiteralInteger" xmi:id="EAID_LI000078_2A55_4e4d_A88F_463B9A6B7701" value="1"/>
					</ownedAttribute>
				</packagedElement>
				<packagedElement xmi:type="uml:Class" xmi:id="EAID_7B8740F5_412B_4150_91DF_8C3A06A3C5FB" name="Seccion" visibility="public">
					<ownedAttribute xmi:type="uml:Property" xmi:id="EAID_954B78DB_D9DE_4647_B376_223A6E5EE9A9" name="nombre" visibility="private" isDerived="false" isOrdered="false">
						<lowerValue xmi:type="uml:LiteralInteger" xmi:id="EAID_LI000079_D9DE_4647_B376_223A6E5EE9A9" value="1"/>
						<upperValue xmi:type="uml:LiteralInteger" xmi:id="EAID_LI000080_D9DE_4647_B376_223A6E5EE9A9" value="1"/>
					</ownedAttribute>
				</packagedElement>
				<packagedElement xmi:type="uml:Class" xmi:id="EAID_BE145EF8_3054_4b41_ABF8_23A90BB5F4D2" name="Transicion" visibility="public">
					<ownedAttribute xmi:type="uml:Property" xmi:id="EAID_9006A1B2_2CAA_49a8_BDBF_2BF7B5ED08E8" name="fechaHoraInicio" visibility="private" isDerived="false" isOrdered="false">
						<lowerValue xmi:type="uml:LiteralInteger" xmi:id="EAID_LI000081_2CAA_49a8_BDBF_2BF7B5ED08E8" value="1"/>
						<upperValue xmi:type="uml:LiteralInteger" xmi:id="EAID_LI000082_2CAA_49a8_BDBF_2BF7B5ED08E8" value="1"/>
					</ownedAttribute>
					<ownedAttribute xmi:type="uml:Property" xmi:id="EAID_BB0D5822_25C9_4027_879A_8FD47243BC2B" name="fechaHoraFin" visibility="private" isDerived="false" isOrdered="false">
						<lowerValue xmi:type="uml:LiteralInteger" xmi:id="EAID_LI000083_25C9_4027_879A_8FD47243BC2B" value="1"/>
						<upperValue xmi:type="uml:LiteralInteger" xmi:id="EAID_LI000084_25C9_4027_879A_8FD47243BC2B" value="1"/>
					</ownedAttribute>
					<ownedAttribute xmi:type="uml:Property" xmi:id="EAID_A6A981F0_7241_48eb_8A34_6B072313017A" name="detalle" visibility="private" isDerived="false" isOrdered="false">
						<lowerValue xmi:type="uml:LiteralInteger" xmi:id="EAID_LI000085_7241_48eb_8A34_6B072313017A" value="1"/>
						<upperValue xmi:type="uml:LiteralInteger" xmi:id="EAID_LI000086_7241_48eb_8A34_6B072313017A" value="1"/>
					</ownedAttribute>
					<ownedAttribute xmi:type="uml:Property" xmi:id="EAID_34016014_B778_479b_BC03_A160A13C9359" name="nombre" visibility="private" isDerived="false" isOrdered="false">
						<lowerValue xmi:type="uml:LiteralInteger" xmi:id="EAID_LI000087_B778_479b_BC03_A160A13C9359" value="1"/>
						<upperValue xmi:type="uml:LiteralInteger" xmi:id="EAID_LI000088_B778_479b_BC03_A160A13C9359" value="1"/>
					</ownedAttribute>
					<ownedAttribute xmi:type="uml:Property" xmi:id="EAID_B70E976F_41D9_4546_B790_4851E963B452" name="estado" visibility="private" isDerived="false" isOrdered="false">
						<lowerValue xmi:type="uml:LiteralInteger" xmi:id="EAID_LI000089_41D9_4546_B790_4851E963B452" value="1"/>
						<upperValue xmi:type="uml:LiteralInteger" xmi:id="EAID_LI000090_41D9_4546_B790_4851E963B452" value="1"/>
					</ownedAttribute>
					<ownedAttribute xmi:type="uml:Property" xmi:id="EAID_FCFDF732_D0B5_4094_AD7E_D29B3112DEED" name="multipleAprobacion" visibility="private" isDerived="false" isOrdered="false">
						<lowerValue xmi:type="uml:LiteralInteger" xmi:id="EAID_LI000091_D0B5_4094_AD7E_D29B3112DEED" value="1"/>
						<upperValue xmi:type="uml:LiteralInteger" xmi:id="EAID_LI000092_D0B5_4094_AD7E_D29B3112DEED" value="1"/>
					</ownedAttribute>
					<ownedAttribute xmi:type="uml:Property" xmi:id="EAID_dst3DDB52_E6E6_40da_B66B_5841F3CA63D9" visibility="public" association="EAID_823DDB52_E6E6_40da_B66B_5841F3CA63D9" isOrdered="false" isDerived="false" isDerivedUnion="false" aggregation="none">
						<type xmi:idref="EAID_494A45F6_51BE_4989_9E35_69DB61EC1EB4"/>
						<lowerValue xmi:type="uml:LiteralInteger" xmi:id="EAID_DL000000_E6E6_40da_B66B_5841F3CA63D9" value="0"/>
						<upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="EAID_DU000000_E6E6_40da_B66B_5841F3CA63D9" value="-1"/>
					</ownedAttribute>
					<ownedAttribute xmi:type="uml:Property" xmi:id="EAID_dstA42E29_350E_43ea_9445_328772D3D3C1" visibility="public" association="EAID_96A42E29_350E_43ea_9445_328772D3D3C1" isOrdered="false" isDerived="false" isDerivedUnion="false" aggregation="none">
						<type xmi:idref="EAID_FEB7F827_B053_4f45_B04C_FD5ABDACF252"/>
						<lowerValue xmi:type="uml:LiteralInteger" xmi:id="EAID_DL000000_350E_43ea_9445_328772D3D3C1" value="1"/>
						<upperValue xmi:type="uml:LiteralInteger" xmi:id="EAID_DU000000_350E_43ea_9445_328772D3D3C1" value="1"/>
					</ownedAttribute>
				</packagedElement>
				<packagedElement xmi:type="uml:Class" xmi:id="EAID_CEF9C3D7_F0C2_482e_B16B_A3CC89B10464" name="Ver" visibility="public">
					<generalization xmi:type="uml:Generalization" xmi:id="EAID_14CB2FEB_3D57_41cf_91E5_0FB13B6F6CE4" general="EAID_3162AFD6_616D_4336_AE4C_34EB9D1B3488"/>
				</packagedElement>
				<packagedElement xmi:type="uml:Class" xmi:id="EAID_7167D0FA_2389_46f5_9449_43C1F9F12354" name="Maquina de Permisos" visibility="public"/>
				<packagedElement xmi:type="uml:Class" xmi:id="EAID_A8C29E4A_1C95_4866_8B51_7893E2A0FB8D" name="Maquina de Estados" visibility="public"/>
				<packagedElement xmi:type="uml:Package" xmi:id="EAPK_F86D9D61_608D_458f_9315_BFBA0CC9DD79" name="System" visibility="public">
					<packagedElement xmi:type="uml:Interface" xmi:id="EAID_0CF0FB50_FADE_4491_8573_F9E9813AFD48" name="Interface1" visibility="public" isAbstract="true"/>
				</packagedElement>
				<packagedElement xmi:type="uml:Package" xmi:id="EAPK_D907E3C2_9A81_4fb4_96DC_A6CF5E58ACEF" name="Frameworks" visibility="public">
					<ownedComment xmi:type="uml:Comment" xmi:id="EAID_42F3F5C6_28DB_44ea_AA87_909CA2AEE59D"/>
				</packagedElement>
			</packagedElement>
		</packagedElement>
		<thecustomprofile:interface base_Interface="EAID_C1E35771_C240_44ba_BBC3_7A952DA32142"/>
		<thecustomprofile:interface base_Interface="EAID_0CF0FB50_FADE_4491_8573_F9E9813AFD48"/>
		<uml:Profile xmi:version="2.1" xmlns:uml="http://schema.omg.org/spec/UML/2.1/uml.xml" xmlns:xmi="http://schema.omg.org/spec/XMI/2.1" xmi:id="thecustomprofile" nsPrefix="thecustomprofile" name="thecustomprofile" metamodelReference="mmref01">
			<ownedComment xmi:type="uml:Comment" xmi:id="comment01" annotatedElement="thecustomprofile">
				<body> Version:1.0</body>
			</ownedComment>
			<packageImport xmi:id="mmref01">
				<importedPackage href="http://schema.omg.org/spec/UML/2.1/uml.xml"/>
			</packageImport>
			<packagedElement xmi:type="uml:Stereotype" xmi:id="interface" name="interface">
				<ownedAttribute xmi:type="uml:Property" xmi:id="interface-base_Interface" name="base_Interface" association="Interface_interface">
					<type href="http://schema.omg.org/spec/UML/2.1/uml.xml#Interface"/>
				</ownedAttribute>
			</packagedElement>
			<packagedElement xmi:type="uml:Extension" xmi:id="Interface_interface" name="A_Interface_interface" memberEnd="extension_interface interface-base_Interface">
				<ownedEnd xmi:id="extension_interface" name="extension_interface" type="interface" isComposite="true" lower="0" upper="1" memberEnd="extension_interface interface-base_Interface"/>
			</packagedElement>
		</uml:Profile>
	</uml:Model>
	<xmi:Extension extender="Enterprise Architect" extenderID="6.5">
		<elements>
			<element xmi:idref="EAPK_34764A9C_C5CD_409f_AB77_F05F03350F1C">
				<packageproperties/>
				<paths/>
				<times/>
				<flags iscontrolled="FALSE" isprotected="FALSE" batchsave="0" batchload="0" usedtd="FALSE" logxml="FALSE" packageFlags="isModel=1;"/>
			</element>
			<element xmi:idref="EAPK_EEB11991_FB33_45bd_A6EB_0C781A55C342" xmi:type="uml:Package" name="Domain Model" scope="public">
				<model package2="EAID_EEB11991_FB33_45bd_A6EB_0C781A55C342" package="EAPK_34764A9C_C5CD_409f_AB77_F05F03350F1C" tpos="4" ea_localid="15" ea_eleType="package"/>
				<properties isSpecification="false" sType="Package" nType="0" scope="public"/>
				<project phase="1.0" created="2013-07-10 15:20:17" modified="2013-07-10 15:20:17" complexity="1" status="Proposed"/>
				<code/>
				<style appearance="BackColor=-1;BorderColor=-1;BorderWidth=-1;FontColor=-1;VSwimLanes=1;HSwimLanes=1;BorderStyle=0;"/>
				<modelDocument/>
				<tags/>
				<xrefs/>
				<extendedProperties tagged="0" package_name="Model"/>
				<packageproperties tpos="4"/>
				<paths/>
				<times/>
				<flags iscontrolled="FALSE" isprotected="FALSE" batchsave="0" batchload="0" usedtd="FALSE" logxml="FALSE" packageFlags="isModel=1;VICON=3;"/>
			</element>
			<element xmi:idref="EAID_1AE2FF85_8FF1_4143_8284_91850224D198" xmi:type="uml:State" name="Actualizado" scope="public">
				<model package="EAPK_EEB11991_FB33_45bd_A6EB_0C781A55C342" tpos="0" ea_localid="240" ea_eleType="element"/>
				<properties isSpecification="false" sType="State" nType="0" scope="public"/>
				<project author="Usuario" version="1.0" phase="1.0" created="2014-05-07 10:53:11" modified="2014-05-07 10:53:14" complexity="1" status="Proposed"/>
				<code gentype="Java"/>
				<style appearance="BackColor=-1;BorderColor=-1;BorderWidth=-1;FontColor=-1;VSwimLanes=0;HSwimLanes=0;BorderStyle=0;"/>
				<modelDocument/>
				<tags/>
				<xrefs value="$XREFPROP=$XID={C9D820A1-7224-4629-AE26-12D04524F636}$XID;$NAM=CustomProperties$NAM;$TYP=element property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isSimple@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isSubmachineState@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isOrthogonal@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isComposite@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={1AE2FF85-8FF1-4143-8284-91850224D198}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
				<extendedProperties tagged="0" package_name="Domain Model"/>
				<links>
					<StateFlow xmi:id="EAID_DA59AAB4_104A_4c67_AB6B_95FDD7984FE4" start="EAID_1AE2FF85_8FF1_4143_8284_91850224D198" end="EAID_FB3D8A23_8FA3_454f_BBF4_4A2D142C12D5"/>
					<StateFlow xmi:id="EAID_0FDFE708_788A_4682_BA84_0DD32DF1B817" start="EAID_972E8417_3864_40a0_89D4_672213108D9C" end="EAID_1AE2FF85_8FF1_4143_8284_91850224D198"/>
					<StateFlow xmi:id="EAID_2D1D3EDF_CBE7_4c77_AF90_162E8F262A8A" start="EAID_D827D872_BC80_471d_A2EC_1EB9D0E0138F" end="EAID_1AE2FF85_8FF1_4143_8284_91850224D198"/>
					<StateFlow xmi:id="EAID_E9B47ACC_759A_47a7_A639_A35A3738F6A8" start="EAID_7657442C_DE12_4088_8D5A_07ED97EAFA3A" end="EAID_1AE2FF85_8FF1_4143_8284_91850224D198"/>
				</links>
			</element>
			<element xmi:idref="EAID_972E8417_3864_40a0_89D4_672213108D9C" xmi:type="uml:State" name="Aprobado" scope="public">
				<model package="EAPK_EEB11991_FB33_45bd_A6EB_0C781A55C342" tpos="0" ea_localid="232" ea_eleType="element"/>
				<properties isSpecification="false" sType="State" nType="0" scope="public"/>
				<project author="Usuario" version="1.0" phase="1.0" created="2014-05-07 10:49:54" modified="2014-05-07 10:49:57" complexity="1" status="Proposed"/>
				<code gentype="Java"/>
				<style appearance="BackColor=-1;BorderColor=-1;BorderWidth=-1;FontColor=-1;VSwimLanes=0;HSwimLanes=0;BorderStyle=0;"/>
				<modelDocument/>
				<tags/>
				<xrefs value="$XREFPROP=$XID={DC1D7760-A1E7-4f88-B657-013646E2D45D}$XID;$NAM=CustomProperties$NAM;$TYP=element property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isSimple@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isSubmachineState@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isOrthogonal@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isComposite@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={972E8417-3864-40a0-89D4-672213108D9C}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
				<extendedProperties tagged="0" package_name="Domain Model"/>
				<links>
					<StateFlow xmi:id="EAID_0FDFE708_788A_4682_BA84_0DD32DF1B817" start="EAID_972E8417_3864_40a0_89D4_672213108D9C" end="EAID_1AE2FF85_8FF1_4143_8284_91850224D198"/>
					<StateFlow xmi:id="EAID_59238AC5_943A_4ff5_8DF3_89BDC747DFA3" start="EAID_972E8417_3864_40a0_89D4_672213108D9C" end="EAID_70891F23_E1FA_45d0_8AD6_46B7EE097BC9"/>
					<StateFlow xmi:id="EAID_6EECE0B9_DF1F_4fe0_85C9_22A3ACDDFBEC" start="EAID_D9C729D7_B811_4780_9213_0A6234D11014" end="EAID_972E8417_3864_40a0_89D4_672213108D9C"/>
					<StateFlow xmi:id="EAID_8987C57A_1043_4e5b_B36F_4EF32B3442A6" start="EAID_FB3D8A23_8FA3_454f_BBF4_4A2D142C12D5" end="EAID_972E8417_3864_40a0_89D4_672213108D9C"/>
				</links>
			</element>
			<element xmi:idref="EAID_70891F23_E1FA_45d0_8AD6_46B7EE097BC9" xmi:type="uml:State" name="Archivado" scope="public">
				<model package="EAPK_EEB11991_FB33_45bd_A6EB_0C781A55C342" tpos="0" ea_localid="237" ea_eleType="element"/>
				<properties isSpecification="false" sType="State" nType="0" scope="public"/>
				<project author="Usuario" version="1.0" phase="1.0" created="2014-05-07 10:52:45" modified="2014-05-07 10:52:48" complexity="1" status="Proposed"/>
				<code gentype="Java"/>
				<style appearance="BackColor=-1;BorderColor=-1;BorderWidth=-1;FontColor=-1;VSwimLanes=0;HSwimLanes=0;BorderStyle=0;"/>
				<modelDocument/>
				<tags/>
				<xrefs value="$XREFPROP=$XID={02A5CD22-63CF-4fb0-8B78-46641E1568F3}$XID;$NAM=CustomProperties$NAM;$TYP=element property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isSimple@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isSubmachineState@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isOrthogonal@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isComposite@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={70891F23-E1FA-45d0-8AD6-46B7EE097BC9}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
				<extendedProperties tagged="0" package_name="Domain Model"/>
				<links>
					<StateFlow xmi:id="EAID_8A2E76C0_5FBB_471b_B660_B07EC00F7B7C" start="EAID_70891F23_E1FA_45d0_8AD6_46B7EE097BC9" end="EAID_12FED14F_9189_40f8_862E_E043DB5DFBA7"/>
					<StateFlow xmi:id="EAID_0D7DF320_588B_4285_9CFC_B22BE9070196" start="EAID_7657442C_DE12_4088_8D5A_07ED97EAFA3A" end="EAID_70891F23_E1FA_45d0_8AD6_46B7EE097BC9"/>
					<StateFlow xmi:id="EAID_59238AC5_943A_4ff5_8DF3_89BDC747DFA3" start="EAID_972E8417_3864_40a0_89D4_672213108D9C" end="EAID_70891F23_E1FA_45d0_8AD6_46B7EE097BC9"/>
					<StateFlow xmi:id="EAID_7BA0C9B1_5756_4307_B516_5DC08F64B959" start="EAID_78010233_2D3A_4cfe_A022_B20739EB3AF3" end="EAID_70891F23_E1FA_45d0_8AD6_46B7EE097BC9"/>
				</links>
			</element>
			<element xmi:idref="EAID_981FFBFC_C5C7_4c71_AA33_38DFE2C83CA2" xmi:type="uml:State" name="Borrador" scope="public">
				<model package="EAPK_EEB11991_FB33_45bd_A6EB_0C781A55C342" tpos="0" ea_localid="230" ea_eleType="element"/>
				<properties isSpecification="false" sType="State" nType="0" scope="public"/>
				<project author="Usuario" version="1.0" phase="1.0" created="2014-05-07 10:49:25" modified="2014-05-07 10:49:29" complexity="1" status="Proposed"/>
				<code gentype="Java"/>
				<style appearance="BackColor=-1;BorderColor=-1;BorderWidth=-1;FontColor=-1;VSwimLanes=0;HSwimLanes=0;BorderStyle=0;"/>
				<modelDocument/>
				<tags/>
				<xrefs value="$XREFPROP=$XID={AA36D019-2B2A-4bf5-8D8A-13AAA287A89F}$XID;$NAM=CustomProperties$NAM;$TYP=element property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isSimple@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isSubmachineState@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isOrthogonal@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isComposite@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={981FFBFC-C5C7-4c71-AA33-38DFE2C83CA2}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
				<extendedProperties tagged="0" package_name="Domain Model"/>
				<links>
					<StateFlow xmi:id="EAID_C721A870_8233_408f_A655_7404C190AF29" start="EAID_981FFBFC_C5C7_4c71_AA33_38DFE2C83CA2" end="EAID_FB3D8A23_8FA3_454f_BBF4_4A2D142C12D5"/>
					<StateFlow xmi:id="EAID_BC6E9103_4C16_4489_94EC_A7FB9F442EB0" start="EAID_E5D1BC6E_2870_4f87_9B74_2AF74422294E" end="EAID_981FFBFC_C5C7_4c71_AA33_38DFE2C83CA2"/>
				</links>
			</element>
			<element xmi:idref="EAID_D9C729D7_B811_4780_9213_0A6234D11014" xmi:type="uml:State" name="EnRevision" scope="public">
				<model package="EAPK_EEB11991_FB33_45bd_A6EB_0C781A55C342" tpos="0" ea_localid="234" ea_eleType="element"/>
				<properties isSpecification="false" sType="State" nType="0" scope="public"/>
				<project author="Usuario" version="1.0" phase="1.0" created="2014-05-07 10:50:22" modified="2014-05-07 10:50:28" complexity="1" status="Proposed"/>
				<code gentype="Java"/>
				<style appearance="BackColor=-1;BorderColor=-1;BorderWidth=-1;FontColor=-1;VSwimLanes=0;HSwimLanes=0;BorderStyle=0;"/>
				<modelDocument/>
				<tags/>
				<xrefs value="$XREFPROP=$XID={FC7F4F42-0C75-4f42-A002-2AC865270AF3}$XID;$NAM=CustomProperties$NAM;$TYP=element property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isSimple@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isSubmachineState@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isOrthogonal@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isComposite@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={D9C729D7-B811-4780-9213-0A6234D11014}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
				<extendedProperties tagged="0" package_name="Domain Model"/>
				<links>
					<StateFlow xmi:id="EAID_6EECE0B9_DF1F_4fe0_85C9_22A3ACDDFBEC" start="EAID_D9C729D7_B811_4780_9213_0A6234D11014" end="EAID_972E8417_3864_40a0_89D4_672213108D9C"/>
					<StateFlow xmi:id="EAID_860BD803_A662_4404_9C3F_6524CA44230E" start="EAID_D9C729D7_B811_4780_9213_0A6234D11014" end="EAID_D827D872_BC80_471d_A2EC_1EB9D0E0138F"/>
					<StateFlow xmi:id="EAID_BC69529B_2F21_4228_ABDE_5C52B6F6FD31" start="EAID_D9C729D7_B811_4780_9213_0A6234D11014" end="EAID_78010233_2D3A_4cfe_A022_B20739EB3AF3"/>
					<StateFlow xmi:id="EAID_44A9372D_7C5B_42bc_9F30_7D1051C353E9" start="EAID_884F1105_1CFE_430a_AB72_8CAFF05AE218" end="EAID_D9C729D7_B811_4780_9213_0A6234D11014"/>
				</links>
			</element>
			<element xmi:idref="EAID_FB3D8A23_8FA3_454f_BBF4_4A2D142C12D5" xmi:type="uml:State" name="Enviado" scope="public">
				<model package="EAPK_EEB11991_FB33_45bd_A6EB_0C781A55C342" tpos="0" ea_localid="231" ea_eleType="element"/>
				<properties isSpecification="false" sType="State" nType="0" scope="public"/>
				<project author="Usuario" version="1.0" phase="1.0" created="2014-05-07 10:49:40" modified="2014-05-07 10:49:44" complexity="1" status="Proposed"/>
				<code gentype="Java"/>
				<style appearance="BackColor=-1;BorderColor=-1;BorderWidth=-1;FontColor=-1;VSwimLanes=0;HSwimLanes=0;BorderStyle=0;"/>
				<modelDocument/>
				<tags/>
				<xrefs value="$XREFPROP=$XID={93228B3A-72E7-469f-9B46-33360A075F12}$XID;$NAM=CustomProperties$NAM;$TYP=element property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isSimple@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isSubmachineState@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isOrthogonal@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isComposite@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={FB3D8A23-8FA3-454f-BBF4-4A2D142C12D5}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
				<extendedProperties tagged="0" package_name="Domain Model"/>
				<links>
					<StateFlow xmi:id="EAID_8987C57A_1043_4e5b_B36F_4EF32B3442A6" start="EAID_FB3D8A23_8FA3_454f_BBF4_4A2D142C12D5" end="EAID_972E8417_3864_40a0_89D4_672213108D9C"/>
					<StateFlow xmi:id="EAID_CCFA1A8F_EAFF_4caf_B954_16F979052E28" start="EAID_FB3D8A23_8FA3_454f_BBF4_4A2D142C12D5" end="EAID_884F1105_1CFE_430a_AB72_8CAFF05AE218"/>
					<StateFlow xmi:id="EAID_C721A870_8233_408f_A655_7404C190AF29" start="EAID_981FFBFC_C5C7_4c71_AA33_38DFE2C83CA2" end="EAID_FB3D8A23_8FA3_454f_BBF4_4A2D142C12D5"/>
					<StateFlow xmi:id="EAID_DA59AAB4_104A_4c67_AB6B_95FDD7984FE4" start="EAID_1AE2FF85_8FF1_4143_8284_91850224D198" end="EAID_FB3D8A23_8FA3_454f_BBF4_4A2D142C12D5"/>
				</links>
			</element>
			<element xmi:idref="EAID_D827D872_BC80_471d_A2EC_1EB9D0E0138F" xmi:type="uml:State" name="PendienteAclaracion" scope="public">
				<model package="EAPK_EEB11991_FB33_45bd_A6EB_0C781A55C342" tpos="0" ea_localid="235" ea_eleType="element"/>
				<properties isSpecification="false" sType="State" nType="0" scope="public"/>
				<project author="Usuario" version="1.0" phase="1.0" created="2014-05-07 10:51:04" modified="2014-05-07 10:51:11" complexity="1" status="Proposed"/>
				<code gentype="Java"/>
				<style appearance="BackColor=-1;BorderColor=-1;BorderWidth=-1;FontColor=-1;VSwimLanes=0;HSwimLanes=0;BorderStyle=0;"/>
				<modelDocument/>
				<tags/>
				<xrefs value="$XREFPROP=$XID={DC7F18E3-E3E6-4121-9F5F-8F70F1D03A2F}$XID;$NAM=CustomProperties$NAM;$TYP=element property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isSimple@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isSubmachineState@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isOrthogonal@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isComposite@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={D827D872-BC80-471d-A2EC-1EB9D0E0138F}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
				<extendedProperties tagged="0" package_name="Domain Model"/>
				<links>
					<StateFlow xmi:id="EAID_2D1D3EDF_CBE7_4c77_AF90_162E8F262A8A" start="EAID_D827D872_BC80_471d_A2EC_1EB9D0E0138F" end="EAID_1AE2FF85_8FF1_4143_8284_91850224D198"/>
					<StateFlow xmi:id="EAID_9141B6A6_E897_402f_91D2_3161C93617D7" start="EAID_D827D872_BC80_471d_A2EC_1EB9D0E0138F" end="EAID_7657442C_DE12_4088_8D5A_07ED97EAFA3A"/>
					<StateFlow xmi:id="EAID_860BD803_A662_4404_9C3F_6524CA44230E" start="EAID_D9C729D7_B811_4780_9213_0A6234D11014" end="EAID_D827D872_BC80_471d_A2EC_1EB9D0E0138F"/>
				</links>
			</element>
			<element xmi:idref="EAID_884F1105_1CFE_430a_AB72_8CAFF05AE218" xmi:type="uml:State" name="PendienteRevision" scope="public">
				<model package="EAPK_EEB11991_FB33_45bd_A6EB_0C781A55C342" tpos="0" ea_localid="233" ea_eleType="element"/>
				<properties isSpecification="false" sType="State" nType="0" scope="public"/>
				<project author="Usuario" version="1.0" phase="1.0" created="2014-05-07 10:50:06" modified="2014-05-07 10:50:13" complexity="1" status="Proposed"/>
				<code gentype="Java"/>
				<style appearance="BackColor=-1;BorderColor=-1;BorderWidth=-1;FontColor=-1;VSwimLanes=0;HSwimLanes=0;BorderStyle=0;"/>
				<modelDocument/>
				<tags/>
				<xrefs value="$XREFPROP=$XID={D5F43D9F-AF34-439f-B5F6-82CEE04504E0}$XID;$NAM=CustomProperties$NAM;$TYP=element property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isSimple@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isSubmachineState@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isOrthogonal@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isComposite@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={884F1105-1CFE-430a-AB72-8CAFF05AE218}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
				<extendedProperties tagged="0" package_name="Domain Model"/>
				<links>
					<StateFlow xmi:id="EAID_44A9372D_7C5B_42bc_9F30_7D1051C353E9" start="EAID_884F1105_1CFE_430a_AB72_8CAFF05AE218" end="EAID_D9C729D7_B811_4780_9213_0A6234D11014"/>
					<StateFlow xmi:id="EAID_CCFA1A8F_EAFF_4caf_B954_16F979052E28" start="EAID_FB3D8A23_8FA3_454f_BBF4_4A2D142C12D5" end="EAID_884F1105_1CFE_430a_AB72_8CAFF05AE218"/>
				</links>
			</element>
			<element xmi:idref="EAID_78010233_2D3A_4cfe_A022_B20739EB3AF3" xmi:type="uml:State" name="Rechazado" scope="public">
				<model package="EAPK_EEB11991_FB33_45bd_A6EB_0C781A55C342" tpos="0" ea_localid="236" ea_eleType="element"/>
				<properties isSpecification="false" sType="State" nType="0" scope="public"/>
				<project author="Usuario" version="1.0" phase="1.0" created="2014-05-07 10:51:33" modified="2014-05-07 10:51:36" complexity="1" status="Proposed"/>
				<code gentype="Java"/>
				<style appearance="BackColor=-1;BorderColor=-1;BorderWidth=-1;FontColor=-1;VSwimLanes=0;HSwimLanes=0;BorderStyle=0;"/>
				<modelDocument/>
				<tags/>
				<xrefs value="$XREFPROP=$XID={2D5DE7AF-19F0-4573-8BBE-D1D98BCBB958}$XID;$NAM=CustomProperties$NAM;$TYP=element property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isSimple@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isSubmachineState@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isOrthogonal@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isComposite@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={78010233-2D3A-4cfe-A022-B20739EB3AF3}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
				<extendedProperties tagged="0" package_name="Domain Model"/>
				<links>
					<StateFlow xmi:id="EAID_7BA0C9B1_5756_4307_B516_5DC08F64B959" start="EAID_78010233_2D3A_4cfe_A022_B20739EB3AF3" end="EAID_70891F23_E1FA_45d0_8AD6_46B7EE097BC9"/>
					<StateFlow xmi:id="EAID_BC69529B_2F21_4228_ABDE_5C52B6F6FD31" start="EAID_D9C729D7_B811_4780_9213_0A6234D11014" end="EAID_78010233_2D3A_4cfe_A022_B20739EB3AF3"/>
				</links>
			</element>
			<element xmi:idref="EAID_7657442C_DE12_4088_8D5A_07ED97EAFA3A" xmi:type="uml:State" name="Vencido" scope="public">
				<model package="EAPK_EEB11991_FB33_45bd_A6EB_0C781A55C342" tpos="0" ea_localid="239" ea_eleType="element"/>
				<properties isSpecification="false" sType="State" nType="0" scope="public"/>
				<project author="Usuario" version="1.0" phase="1.0" created="2014-05-07 10:53:05" modified="2014-05-07 10:53:09" complexity="1" status="Proposed"/>
				<code gentype="Java"/>
				<style appearance="BackColor=-1;BorderColor=-1;BorderWidth=-1;FontColor=-1;VSwimLanes=0;HSwimLanes=0;BorderStyle=0;"/>
				<modelDocument/>
				<tags/>
				<xrefs value="$XREFPROP=$XID={47C80D54-4128-455a-8C6C-BF36A54569C7}$XID;$NAM=CustomProperties$NAM;$TYP=element property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isSimple@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isSubmachineState@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isOrthogonal@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isComposite@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={7657442C-DE12-4088-8D5A-07ED97EAFA3A}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
				<extendedProperties tagged="0" package_name="Domain Model"/>
				<links>
					<StateFlow xmi:id="EAID_0D7DF320_588B_4285_9CFC_B22BE9070196" start="EAID_7657442C_DE12_4088_8D5A_07ED97EAFA3A" end="EAID_70891F23_E1FA_45d0_8AD6_46B7EE097BC9"/>
					<StateFlow xmi:id="EAID_E9B47ACC_759A_47a7_A639_A35A3738F6A8" start="EAID_7657442C_DE12_4088_8D5A_07ED97EAFA3A" end="EAID_1AE2FF85_8FF1_4143_8284_91850224D198"/>
					<StateFlow xmi:id="EAID_9141B6A6_E897_402f_91D2_3161C93617D7" start="EAID_D827D872_BC80_471d_A2EC_1EB9D0E0138F" end="EAID_7657442C_DE12_4088_8D5A_07ED97EAFA3A"/>
				</links>
			</element>
			<element xmi:idref="EAID_12FED14F_9189_40f8_862E_E043DB5DFBA7" xmi:type="uml:StateNode" name="fin" scope="public">
				<model package="EAPK_EEB11991_FB33_45bd_A6EB_0C781A55C342" tpos="0" ea_localid="238" ea_eleType="element"/>
				<properties isSpecification="false" sType="StateNode" nType="4" scope="public"/>
				<project author="Usuario" version="1.0" phase="1.0" created="2014-05-07 10:52:56" modified="2014-05-07 11:16:10" complexity="1" status="Proposed"/>
				<code gentype="&lt;none&gt;"/>
				<style appearance="BackColor=-1;BorderColor=-1;BorderWidth=-1;FontColor=-1;VSwimLanes=1;HSwimLanes=1;BorderStyle=0;"/>
				<modelDocument/>
				<tags/>
				<xrefs value="$XREFPROP=$XID={913AD968-D415-462c-8356-BC0CC3D68ED5}$XID;$NAM=CustomProperties$NAM;$TYP=element property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=kind@ENDNAME;@TYPE=PseudoStateKind@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={12FED14F-9189-40f8-862E-E043DB5DFBA7}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
				<extendedProperties tagged="0" package_name="Domain Model"/>
				<links>
					<StateFlow xmi:id="EAID_8A2E76C0_5FBB_471b_B660_B07EC00F7B7C" start="EAID_70891F23_E1FA_45d0_8AD6_46B7EE097BC9" end="EAID_12FED14F_9189_40f8_862E_E043DB5DFBA7"/>
				</links>
			</element>
			<element xmi:idref="EAID_E5D1BC6E_2870_4f87_9B74_2AF74422294E" xmi:type="uml:StateNode" name="inicio" scope="public">
				<model package="EAPK_EEB11991_FB33_45bd_A6EB_0C781A55C342" tpos="0" ea_localid="229" ea_eleType="element"/>
				<properties isSpecification="false" sType="StateNode" nType="3" scope="public"/>
				<project author="Usuario" version="1.0" phase="1.0" created="2014-05-07 10:49:22" modified="2014-05-07 11:16:04" complexity="1" status="Proposed"/>
				<code gentype="&lt;none&gt;"/>
				<style appearance="BackColor=-1;BorderColor=-1;BorderWidth=-1;FontColor=-1;VSwimLanes=1;HSwimLanes=1;BorderStyle=0;"/>
				<modelDocument/>
				<tags/>
				<xrefs value="$XREFPROP=$XID={B868BEE2-225F-4b0a-A6D0-75704B3F6572}$XID;$NAM=CustomProperties$NAM;$TYP=element property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=kind@ENDNAME;@TYPE=PseudoStateKind@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={E5D1BC6E-2870-4f87-9B74-2AF74422294E}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
				<extendedProperties tagged="0" package_name="Domain Model"/>
				<links>
					<StateFlow xmi:id="EAID_BC6E9103_4C16_4489_94EC_A7FB9F442EB0" start="EAID_E5D1BC6E_2870_4f87_9B74_2AF74422294E" end="EAID_981FFBFC_C5C7_4c71_AA33_38DFE2C83CA2"/>
				</links>
			</element>
			<element xmi:idref="EAPK_4530D12D_3FE1_4dbe_8199_0FC1D89C8D71" xmi:type="uml:Package" name="Domain Objects" scope="public">
				<model package2="EAID_4530D12D_3FE1_4dbe_8199_0FC1D89C8D71" package="EAPK_EEB11991_FB33_45bd_A6EB_0C781A55C342" tpos="0" ea_localid="16" ea_eleType="package"/>
				<properties isSpecification="false" sType="Package" nType="0" scope="public"/>
				<project version="1.0" phase="1.0" created="2005-11-19 10:06:07" modified="2006-01-18 08:41:09" complexity="1" status="Proposed"/>
				<code gentype="Java"/>
				<style appearance="BackColor=-1;BorderColor=-1;BorderWidth=-1;FontColor=-1;VSwimLanes=1;HSwimLanes=1;BorderStyle=0;"/>
				<modelDocument/>
				<tags/>
				<xrefs/>
				<extendedProperties tagged="0" package_name="Domain Model" eventflags="LNK=8dbf;"/>
				<packageproperties/>
				<paths/>
				<times/>
				<flags iscontrolled="FALSE" isprotected="FALSE" batchsave="0" batchload="0" usedtd="FALSE" logxml="FALSE"/>
			</element>
			<element xmi:idref="EAID_B50119B3_183D_49e9_AC42_C855CBE4EEBA" xmi:type="uml:Note" name="Note" scope="public">
				<model package="EAPK_4530D12D_3FE1_4dbe_8199_0FC1D89C8D71" tpos="0" ea_localid="172" ea_eleType="element" name="Note"/>
				<properties documentation="The Domain class model captures essential information about objects in the domain. " isSpecification="false" sType="Note" nType="0" scope="public"/>
				<project version="1.0" phase="1.0" created="2005-11-20 08:36:02" modified="2006-01-11 09:35:17" complexity="1" status="Proposed"/>
				<code gentype="&lt;none&gt;"/>
				<style appearance="BackColor=-1;BorderColor=-1;BorderWidth=-1;FontColor=-1;VSwimLanes=1;HSwimLanes=1;BorderStyle=0;"/>
				<modelDocument/>
				<tags/>
				<xrefs/>
				<extendedProperties tagged="0" package_name="Domain Objects"/>
			</element>
			<element xmi:idref="EAPK_BB813498_4F89_46cc_A391_35CBDF001B91" xmi:type="uml:Package" name="Class Model" scope="public">
				<model package2="EAID_BB813498_4F89_46cc_A391_35CBDF001B91" package="EAPK_34764A9C_C5CD_409f_AB77_F05F03350F1C" tpos="6" ea_localid="17" ea_eleType="package"/>
				<properties isSpecification="false" sType="Package" nType="0" scope="public"/>
				<project phase="1.0" created="2013-07-10 15:20:17" modified="2013-07-10 15:20:17" complexity="1" status="Proposed"/>
				<code/>
				<style appearance="BackColor=-1;BorderColor=-1;BorderWidth=-1;FontColor=-1;VSwimLanes=1;HSwimLanes=1;BorderStyle=0;"/>
				<modelDocument/>
				<tags/>
				<xrefs/>
				<extendedProperties tagged="0" package_name="Model"/>
				<packageproperties tpos="6"/>
				<paths/>
				<times/>
				<flags iscontrolled="FALSE" isnamespace="1" isprotected="FALSE" batchsave="0" batchload="0" usedtd="FALSE" logxml="FALSE" packageFlags="isModel=1;VICON=3;"/>
			</element>
			<element xmi:idref="EAID_54B4214E_D5F5_434a_90BD_ED513C62D738" xmi:type="uml:Note" name="Note" scope="public">
				<model package="EAPK_BB813498_4F89_46cc_A391_35CBDF001B91" tpos="0" ea_localid="179" ea_eleType="element" name="Note"/>
				<properties documentation="The Class Model is a logical model of the software system under construction. Classes generally have a direct relationship to source code or other software artifacts that can be grouped together into executable components. &#xA;&#xA;The System package contains the classes and artifacts which are being built or designed as part of the current model. The Frameworks package generally contains classes and components that have been designed and built earlier and are being reused as part of the current project." isSpecification="false" sType="Note" nType="0" scope="public"/>
				<project version="1.0" phase="1.0" created="2005-11-20 08:42:09" modified="2006-01-05 13:34:16" complexity="1" status="Proposed"/>
				<code gentype="&lt;none&gt;"/>
				<style appearance="BackColor=-1;BorderColor=-1;BorderWidth=-1;FontColor=-1;VSwimLanes=1;HSwimLanes=1;BorderStyle=0;"/>
				<modelDocument/>
				<tags/>
				<xrefs/>
				<extendedProperties tagged="0" package_name="Class Model"/>
			</element>
			<element xmi:idref="EAID_7C422CBA_2B31_4ac0_AC25_953CDEACEBCC" xmi:type="uml:Note" scope="public">
				<model package="EAPK_BB813498_4F89_46cc_A391_35CBDF001B91" tpos="0" ea_localid="178" ea_eleType="element"/>
				<properties documentation="Class libraries, API''s and other re-usable components" isSpecification="false" sType="Note" nType="0" scope="public"/>
				<project version="1.0" phase="1.0" created="2006-01-05 13:04:54" modified="2006-01-07 16:16:20" complexity="1" status="Proposed"/>
				<code gentype="&lt;none&gt;"/>
				<style appearance="BackColor=-1;BorderColor=-1;BorderWidth=-1;FontColor=-1;VSwimLanes=1;HSwimLanes=1;BorderStyle=0;"/>
				<modelDocument/>
				<tags/>
				<xrefs/>
				<extendedProperties tagged="0" package_name="Class Model" eventflags="LNK=14c9;"/>
				<links>
					<NoteLink xmi:id="EAID_4C96D6ED_0BE9_4071_8333_7ABAC5CAF128" start="EAID_BCF1D6BC_7ACD_4070_9C41_C233E19E2A28" end="EAID_7C422CBA_2B31_4ac0_AC25_953CDEACEBCC"/>
				</links>
			</element>
			<element xmi:idref="EAID_85056535_C1E9_4916_BA1B_D72376F38B8B" xmi:type="uml:Text" name="$help://class_model_pattern.htm" scope="public">
				<model package="EAPK_BB813498_4F89_46cc_A391_35CBDF001B91" tpos="0" ea_localid="180" ea_eleType="element" name="$help://class_model_pattern.htm"/>
				<properties isSpecification="false" sType="Text" nType="19" alias="Read about Class Modeling" scope="public"/>
				<project version="1.0" phase="1.0" created="2005-12-19 16:44:57" modified="2006-01-06 15:57:25" complexity="1" status="Proposed"/>
				<code gentype="&lt;none&gt;"/>
				<style appearance="BackColor=-1;BorderColor=-1;BorderWidth=-1;FontColor=-1;VSwimLanes=1;HSwimLanes=1;BorderStyle=0;"/>
				<modelDocument/>
				<tags/>
				<xrefs value="$XREFPROP=$XID={E39A19CD-BD93-4b6e-9931-9E5B1B1A5C0C}$XID;$NAM=CustomProperties$NAM;$TYP=element property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isActive@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={85056535-C1E9-4916-BA1B-D72376F38B8B}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
				<extendedProperties tagged="0" package_name="Class Model"/>
			</element>
			<element xmi:idref="EAID_BD5769BE_A74D_4401_8E79_F0D8F4B75CE6" xmi:type="uml:Text" name="$help://classdiagram.htm" scope="public">
				<model package="EAPK_BB813498_4F89_46cc_A391_35CBDF001B91" tpos="0" ea_localid="181" ea_eleType="element" name="$help://classdiagram.htm"/>
				<properties isSpecification="false" sType="Text" nType="19" alias="View Further Examples" scope="public"/>
				<project version="1.0" phase="1.0" created="2005-11-20 08:46:47" modified="2006-01-10 12:31:04" complexity="1" status="Proposed"/>
				<code gentype="&lt;none&gt;"/>
				<style appearance="BackColor=-1;BorderColor=-1;BorderWidth=-1;FontColor=-1;VSwimLanes=1;HSwimLanes=1;BorderStyle=0;"/>
				<modelDocument/>
				<tags/>
				<xrefs value="$XREFPROP=$XID={8717D579-D1A7-4464-B46F-27805581E7E1}$XID;$NAM=CustomProperties$NAM;$TYP=element property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isActive@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={BD5769BE-A74D-4401-8E79-F0D8F4B75CE6}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
				<extendedProperties tagged="0" package_name="Class Model"/>
			</element>
			<element xmi:idref="EAID_C6A1CB6A_E7F2_4c9d_8283_0B54C088C11A" xmi:type="uml:Note" scope="public">
				<model package="EAPK_BB813498_4F89_46cc_A391_35CBDF001B91" tpos="0" ea_localid="177" ea_eleType="element"/>
				<properties documentation="Classes, interfaces and logical components for the new system" isSpecification="false" sType="Note" nType="0" scope="public"/>
				<project version="1.0" phase="1.0" created="2006-01-05 13:04:51" modified="2006-01-07 16:15:36" complexity="1" status="Proposed"/>
				<code gentype="&lt;none&gt;"/>
				<style appearance="BackColor=-1;BorderColor=-1;BorderWidth=-1;FontColor=-1;VSwimLanes=1;HSwimLanes=1;BorderStyle=0;"/>
				<modelDocument/>
				<tags/>
				<xrefs/>
				<extendedProperties tagged="0" package_name="Class Model" eventflags="LNK=0999;"/>
				<links>
					<NoteLink xmi:id="EAID_06BF65C8_48BD_4ff2_9008_3CCFA1BF3B07" start="EAID_7F384018_442B_4192_83E2_D6362D07772D" end="EAID_C6A1CB6A_E7F2_4c9d_8283_0B54C088C11A"/>
				</links>
			</element>
			<element xmi:idref="EAPK_7F384018_442B_4192_83E2_D6362D07772D" xmi:type="uml:Package" name="System" scope="public">
				<model package2="EAID_7F384018_442B_4192_83E2_D6362D07772D" package="EAPK_BB813498_4F89_46cc_A391_35CBDF001B91" tpos="1" ea_localid="18" ea_eleType="package"/>
				<properties isSpecification="false" sType="Package" nType="0" scope="public"/>
				<project version="1.0" phase="1.0" created="2005-11-19 10:06:57" modified="2005-11-19 10:06:57" complexity="1" status="Proposed"/>
				<code gentype="Java"/>
				<style appearance="BackColor=-1;BorderColor=-1;BorderWidth=-1;FontColor=-1;VSwimLanes=1;HSwimLanes=1;BorderStyle=0;"/>
				<modelDocument/>
				<tags/>
				<xrefs/>
				<extendedProperties tagged="0" package_name="Class Model" eventflags="LNK=0999;"/>
				<packageproperties tpos="1"/>
				<paths/>
				<times/>
				<flags iscontrolled="FALSE" isprotected="FALSE" batchsave="0" batchload="0" usedtd="FALSE" logxml="FALSE"/>
			</element>
			<element xmi:idref="EAID_C1E35771_C240_44ba_BBC3_7A952DA32142" xmi:type="uml:Interface" name="Interface1" scope="public">
				<model package="EAPK_7F384018_442B_4192_83E2_D6362D07772D" tpos="0" ea_localid="186" ea_eleType="element"/>
				<properties isSpecification="false" sType="Interface" nType="0" scope="public" stereotype="interface" isRoot="false" isLeaf="false" isAbstract="true"/>
				<project version="1.0" phase="1.0" created="2006-01-05 13:35:12" modified="2006-01-05 13:35:12" complexity="1" status="Proposed"/>
				<code gentype="Java"/>
				<style appearance="BackColor=-1;BorderColor=-1;BorderWidth=-1;FontColor=-1;VSwimLanes=1;HSwimLanes=1;BorderStyle=0;"/>
				<modelDocument/>
				<tags/>
				<xrefs value="$XREFPROP=$XID={CF03B187-D7AC-42a2-BEA3-12C55398CB3A}$XID;$NAM=Stereotypes$NAM;$TYP=element property$TYP;$VIS=Public$VIS;$DES=@STEREO;Name=interface;GUID={D5FC04B3-A334-48a9-B0D7-949586E5E0D1};@ENDSTEREO;$DES;$CLT={C1E35771-C240-44ba-BBC3-7A952DA32142}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
				<extendedProperties tagged="0" package_name="System" eventflags="LNK=dd5b;"/>
			</element>
			<element xmi:idref="EAPK_BCF1D6BC_7ACD_4070_9C41_C233E19E2A28" xmi:type="uml:Package" name="Frameworks" scope="public">
				<model package2="EAID_BCF1D6BC_7ACD_4070_9C41_C233E19E2A28" package="EAPK_BB813498_4F89_46cc_A391_35CBDF001B91" tpos="2" ea_localid="19" ea_eleType="package"/>
				<properties isSpecification="false" sType="Package" nType="0" scope="public"/>
				<project version="1.0" phase="1.0" created="2005-11-19 10:06:33" modified="2005-11-19 10:06:33" complexity="1" status="Proposed"/>
				<code gentype="Java"/>
				<style appearance="BackColor=-1;BorderColor=-1;BorderWidth=-1;FontColor=-1;VSwimLanes=1;HSwimLanes=1;BorderStyle=0;"/>
				<modelDocument/>
				<tags/>
				<xrefs/>
				<extendedProperties tagged="0" package_name="Class Model" eventflags="LNK=14c9;"/>
				<packageproperties tpos="2"/>
				<paths/>
				<times/>
				<flags iscontrolled="FALSE" isprotected="FALSE" batchsave="0" batchload="0" usedtd="FALSE" logxml="FALSE"/>
			</element>
			<element xmi:idref="EAID_2BAD0B4C_4BAE_4df4_BC77_DBCAFA2D1009" xmi:type="uml:Note" name="Note" scope="public">
				<model package="EAPK_BCF1D6BC_7ACD_4070_9C41_C233E19E2A28" tpos="0" ea_localid="188" ea_eleType="element" name="Note"/>
				<properties isSpecification="false" sType="Note" nType="0" scope="public"/>
				<project version="1.0" phase="1.0" created="2006-01-05 13:35:43" modified="2006-01-05 13:35:43" complexity="1" status="Proposed"/>
				<code gentype="&lt;none&gt;"/>
				<style appearance="BackColor=-1;BorderColor=-1;BorderWidth=-1;FontColor=-1;VSwimLanes=1;HSwimLanes=1;BorderStyle=0;"/>
				<modelDocument/>
				<tags/>
				<xrefs/>
				<extendedProperties tagged="0" package_name="Frameworks"/>
			</element>
			<element xmi:idref="EAPK_251C3D9E_572F_489f_A441_FE800ED72348" xmi:type="uml:Package" name="Class Model" scope="public">
				<model package2="EAID_251C3D9E_572F_489f_A441_FE800ED72348" package="EAPK_34764A9C_C5CD_409f_AB77_F05F03350F1C" tpos="6" ea_localid="4" ea_eleType="package"/>
				<properties isSpecification="false" sType="Package" nType="0" scope="public"/>
				<project phase="1.0" created="2012-11-09 10:40:48" modified="2012-11-09 10:40:48" complexity="1" status="Proposed"/>
				<code/>
				<style appearance="BackColor=-1;BorderColor=-1;BorderWidth=-1;FontColor=-1;VSwimLanes=1;HSwimLanes=1;BorderStyle=0;"/>
				<modelDocument/>
				<tags/>
				<xrefs/>
				<extendedProperties tagged="0" package_name="Model"/>
				<packageproperties tpos="6"/>
				<paths/>
				<times created="2012-11-09 10:40:48" modified="2012-11-09 10:40:48" lastloaddate="2012-11-09 10:40:48" lastsavedate="2012-11-09 10:40:48"/>
				<flags iscontrolled="FALSE" isnamespace="1" isprotected="FALSE" batchsave="0" batchload="0" usedtd="FALSE" logxml="FALSE" packageFlags="isModel=1;VICON=3;"/>
			</element>
			<element xmi:idref="EAID_E0F984DE_07AC_408f_AC07_AD83323C322D" xmi:type="uml:Class" name="Campo" scope="public">
				<model package="EAPK_251C3D9E_572F_489f_A441_FE800ED72348" tpos="0" ea_localid="227" ea_eleType="element"/>
				<properties isSpecification="false" sType="Class" nType="0" scope="public" isRoot="false" isLeaf="false" isAbstract="false" isActive="false"/>
				<project author="Usuario" version="1.0" phase="1.0" created="2014-04-25 10:25:41" modified="2014-04-25 10:25:45" complexity="1" status="Proposed"/>
				<code gentype="Java"/>
				<style appearance="BackColor=-1;BorderColor=-1;BorderWidth=-1;FontColor=-1;VSwimLanes=1;HSwimLanes=1;BorderStyle=0;"/>
				<modelDocument/>
				<tags/>
				<xrefs value="$XREFPROP=$XID={F6C9407D-C4EB-42fe-A212-6CDC5770EA41}$XID;$NAM=CustomProperties$NAM;$TYP=element property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isActive@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={E0F984DE-07AC-408f-AC07-AD83323C322D}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
				<extendedProperties tagged="0" package_name="Class Model"/>
				<attributes>
					<attribute xmi:idref="EAID_10C47806_D08F_41ec_89D3_55E36CA4B753" name="nombre" scope="Private">
						<initial/>
						<documentation/>
						<model ea_localid="168" ea_guid="{10C47806-D08F-41ec-89D3-55E36CA4B753}"/>
						<properties type="char" derived="0" collection="false" duplicates="0" changeability="changeable"/>
						<coords ordered="0"/>
						<containment containment="Not Specified" position="0"/>
						<stereotype/>
						<bounds lower="1" upper="1"/>
						<options/>
						<style/>
						<styleex value="volatile=0;"/>
						<tags/>
						<xrefs/>
					</attribute>
					<attribute xmi:idref="EAID_7D67D251_A2BD_434a_B986_2274A429475D" name="tipo" scope="Private">
						<initial/>
						<documentation/>
						<model ea_localid="169" ea_guid="{7D67D251-A2BD-434a-B986-2274A429475D}"/>
						<properties type="char" derived="0" collection="false" duplicates="0" changeability="changeable"/>
						<coords ordered="0"/>
						<containment containment="Not Specified" position="1"/>
						<stereotype/>
						<bounds lower="1" upper="1"/>
						<options/>
						<style/>
						<styleex value="volatile=0;"/>
						<tags/>
						<xrefs/>
					</attribute>
					<attribute xmi:idref="EAID_795D2EA7_3B13_428a_AB89_4E1C6B205B70" name="valor" scope="Private">
						<initial/>
						<documentation/>
						<model ea_localid="170" ea_guid="{795D2EA7-3B13-428a-AB89-4E1C6B205B70}"/>
						<properties type="char" derived="0" collection="false" duplicates="0" changeability="changeable"/>
						<coords ordered="0"/>
						<containment containment="Not Specified" position="2"/>
						<stereotype/>
						<bounds lower="1" upper="1"/>
						<options/>
						<style/>
						<styleex value="volatile=0;"/>
						<tags/>
						<xrefs/>
					</attribute>
				</attributes>
				<links>
					<Association xmi:id="EAID_9B5A4EF9_D429_4825_8D1D_169C46B7DE57" start="EAID_7B8740F5_412B_4150_91DF_8C3A06A3C5FB" end="EAID_E0F984DE_07AC_408f_AC07_AD83323C322D"/>
				</links>
			</element>
			<element xmi:idref="EAID_936272D8_AEEF_4b92_B5F6_55FD046C216C" xmi:type="uml:Class" name="Categoria" scope="public">
				<model package="EAPK_251C3D9E_572F_489f_A441_FE800ED72348" tpos="0" ea_localid="222" ea_eleType="element"/>
				<properties isSpecification="false" sType="Class" nType="0" scope="public" isRoot="false" isLeaf="false" isAbstract="false" isActive="false"/>
				<project author="Usuario" version="1.0" phase="1.0" created="2014-04-04 20:32:09" modified="2014-04-04 20:32:14" complexity="1" status="Proposed"/>
				<code gentype="Java"/>
				<style appearance="BackColor=-1;BorderColor=-1;BorderWidth=-1;FontColor=-1;VSwimLanes=1;HSwimLanes=1;BorderStyle=0;"/>
				<modelDocument/>
				<tags/>
				<xrefs value="$XREFPROP=$XID={89BC78D8-251E-4849-9F83-97C51B313FB8}$XID;$NAM=CustomProperties$NAM;$TYP=element property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isActive@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={936272D8-AEEF-4b92-B5F6-55FD046C216C}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
				<extendedProperties tagged="0" package_name="Class Model"/>
				<attributes>
					<attribute xmi:idref="EAID_6A5A5A62_539E_467d_AE79_ABBC4BEA9003" name="nombre" scope="Private">
						<initial/>
						<documentation/>
						<model ea_localid="145" ea_guid="{6A5A5A62-539E-467d-AE79-ABBC4BEA9003}"/>
						<properties type="char" derived="0" collection="false" duplicates="0" changeability="changeable"/>
						<coords ordered="0"/>
						<containment containment="Not Specified" position="0"/>
						<stereotype/>
						<bounds lower="1" upper="1"/>
						<options/>
						<style/>
						<styleex value="volatile=0;"/>
						<tags/>
						<xrefs/>
					</attribute>
				</attributes>
				<links>
					<Association xmi:id="EAID_44FC0EC0_3ECE_4fa5_A59A_42410D2E9CA6" start="EAID_DB6D4F90_8A74_4253_A05F_15E389F9E7BF" end="EAID_936272D8_AEEF_4b92_B5F6_55FD046C216C"/>
				</links>
			</element>
			<element xmi:idref="EAID_38C8A964_D4EB_4cd2_A707_757CDE9EC9EC" xmi:type="uml:Class" name="DefinicionMaquinaEstado" scope="public">
				<model package="EAPK_251C3D9E_572F_489f_A441_FE800ED72348" tpos="0" ea_localid="107" ea_eleType="element"/>
				<properties isSpecification="false" sType="Class" nType="0" scope="public" isRoot="false" isLeaf="false" isAbstract="false" isActive="false"/>
				<project author="Valued Customer" version="1.0" phase="1.0" created="2013-06-29 21:03:20" modified="2013-10-26 15:43:05" complexity="1" status="Proposed"/>
				<code gentype="Java"/>
				<style appearance="BackColor=7452927;BorderColor=-1;BorderWidth=1;FontColor=-1;VSwimLanes=1;HSwimLanes=1;BorderStyle=0;"/>
				<modelDocument/>
				<tags/>
				<xrefs value="$XREFPROP=$XID={9D40DF64-830C-4bdb-B4A2-BB44AAB96134}$XID;$NAM=CustomProperties$NAM;$TYP=element property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isActive@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={38C8A964-D4EB-4cd2-A707-757CDE9EC9EC}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
				<extendedProperties tagged="0" package_name="Class Model"/>
				<attributes>
					<attribute xmi:idref="EAID_2ED7FA96_9031_4a3a_A2DC_39577573C63A" name="codigo" scope="Private">
						<initial/>
						<documentation/>
						<model ea_localid="137" ea_guid="{2ED7FA96-9031-4a3a-A2DC-39577573C63A}"/>
						<properties type="char" derived="0" collection="false" duplicates="0" changeability="changeable"/>
						<coords ordered="0"/>
						<containment containment="Not Specified" position="0"/>
						<stereotype/>
						<bounds lower="1" upper="1"/>
						<options/>
						<style/>
						<styleex value="volatile=0;"/>
						<tags/>
						<xrefs/>
					</attribute>
					<attribute xmi:idref="EAID_2A324CF8_E0D1_4abc_B6D7_44B8F4008F1C" name="descripcion" scope="Private">
						<initial/>
						<documentation/>
						<model ea_localid="96" ea_guid="{2A324CF8-E0D1-4abc-B6D7-44B8F4008F1C}"/>
						<properties type="char" derived="0" collection="false" duplicates="0" changeability="changeable"/>
						<coords ordered="0"/>
						<containment containment="Not Specified" position="1"/>
						<stereotype/>
						<bounds lower="1" upper="1"/>
						<options/>
						<style/>
						<styleex value="volatile=0;"/>
						<tags/>
						<xrefs/>
					</attribute>
					<attribute xmi:idref="EAID_09069272_64FD_4bb4_869A_5818F824A233" name="nombre" scope="Private">
						<initial/>
						<documentation/>
						<model ea_localid="95" ea_guid="{09069272-64FD-4bb4-869A-5818F824A233}"/>
						<properties type="char" derived="0" collection="false" duplicates="0" changeability="changeable"/>
						<coords ordered="0"/>
						<containment containment="Not Specified" position="2"/>
						<stereotype/>
						<bounds lower="1" upper="1"/>
						<options/>
						<style/>
						<styleex value="volatile=0;"/>
						<tags/>
						<xrefs/>
					</attribute>
					<attribute xmi:idref="EAID_BB1CBD3E_D3EF_48b6_A233_ED8344DA05A7" name="version" scope="Private">
						<initial/>
						<documentation/>
						<model ea_localid="99" ea_guid="{BB1CBD3E-D3EF-48b6-A233-ED8344DA05A7}"/>
						<properties type="int" derived="0" collection="false" duplicates="0" changeability="changeable"/>
						<coords ordered="0"/>
						<containment containment="Not Specified" position="3"/>
						<stereotype/>
						<bounds lower="1" upper="1"/>
						<options/>
						<style/>
						<styleex value="volatile=0;"/>
						<tags/>
						<xrefs/>
					</attribute>
				</attributes>
				<links>
					<Association xmi:id="EAID_6E8E542A_6A3D_44fd_A414_02AC36303C2A" start="EAID_38C8A964_D4EB_4cd2_A707_757CDE9EC9EC" end="EAID_FEB7F827_B053_4f45_B04C_FD5ABDACF252"/>
					<Association xmi:id="EAID_4B77B922_B452_4cfe_A7E4_EDADC5EB5EDF" start="EAID_D177CECD_84CC_4aaf_990C_380C7A16A55B" end="EAID_38C8A964_D4EB_4cd2_A707_757CDE9EC9EC"/>
				</links>
			</element>
			<element xmi:idref="EAID_FEB7F827_B053_4f45_B04C_FD5ABDACF252" xmi:type="uml:Class" name="DefinicionTransicion" scope="public">
				<model package="EAPK_251C3D9E_572F_489f_A441_FE800ED72348" tpos="0" ea_localid="64" ea_eleType="element"/>
				<properties isSpecification="false" sType="Class" nType="0" scope="public" isRoot="false" isLeaf="false" isAbstract="false" isActive="false"/>
				<project author="Valued Customer" version="1.0" phase="1.0" created="2012-11-16 23:00:48" modified="2013-06-30 21:45:51" complexity="1" status="Proposed"/>
				<code gentype="Java"/>
				<style appearance="BackColor=7452927;BorderColor=-1;BorderWidth=1;FontColor=-1;VSwimLanes=1;HSwimLanes=1;BorderStyle=0;"/>
				<modelDocument/>
				<tags/>
				<xrefs value="$XREFPROP=$XID={CBF7E007-9CD0-4862-B522-663B7D8444D9}$XID;$NAM=CustomProperties$NAM;$TYP=element property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isActive@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={FEB7F827-B053-4f45-B04C-FD5ABDACF252}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
				<extendedProperties tagged="0" package_name="Class Model"/>
				<attributes>
					<attribute xmi:idref="EAID_43A8ABBA_CD80_4121_A180_429F90D40EA7" name="nombre" scope="Private">
						<initial/>
						<documentation/>
						<model ea_localid="46" ea_guid="{43A8ABBA-CD80-4121-A180-429F90D40EA7}"/>
						<properties type="char" derived="0" collection="false" duplicates="0" changeability="changeable"/>
						<coords ordered="0"/>
						<containment containment="Not Specified" position="0"/>
						<stereotype/>
						<bounds lower="1" upper="1"/>
						<options/>
						<style/>
						<styleex value="volatile=0;"/>
						<tags/>
						<xrefs/>
					</attribute>
					<attribute xmi:idref="EAID_65DE47EC_93E6_4404_8504_C32638808B72" name="descripcion" scope="Private">
						<initial/>
						<documentation/>
						<model ea_localid="47" ea_guid="{65DE47EC-93E6-4404-8504-C32638808B72}"/>
						<properties type="char" derived="0" collection="false" duplicates="0" changeability="changeable"/>
						<coords ordered="0"/>
						<containment containment="Not Specified" position="1"/>
						<stereotype/>
						<bounds lower="1" upper="1"/>
						<options/>
						<style/>
						<styleex value="volatile=0;"/>
						<tags/>
						<xrefs/>
					</attribute>
				</attributes>
				<links>
					<Association xmi:id="EAID_0C2D7E9D_2E1A_4eaf_A206_17D849AAE750" start="EAID_FEB7F827_B053_4f45_B04C_FD5ABDACF252" end="EAID_912BC6F8_FB18_4416_9432_1AD48775676D"/>
					<Association xmi:id="EAID_3E1AE3AB_6C76_4ffb_A619_DDBCBFB6A6B0" start="EAID_FEB7F827_B053_4f45_B04C_FD5ABDACF252" end="EAID_D6358D5E_863D_44a7_96D9_9C3E91364044"/>
					<Association xmi:id="EAID_6BBF6416_9370_4de1_A9F1_8618110BF8CC" start="EAID_FEB7F827_B053_4f45_B04C_FD5ABDACF252" end="EAID_912BC6F8_FB18_4416_9432_1AD48775676D"/>
					<NoteLink xmi:id="EAID_47953BD6_4EC3_4564_B96A_4465D52B1871" start="EAID_F3421EFA_73DA_4666_A102_BDC5DE63DB87" end="EAID_FEB7F827_B053_4f45_B04C_FD5ABDACF252"/>
					<Association xmi:id="EAID_6E8E542A_6A3D_44fd_A414_02AC36303C2A" start="EAID_38C8A964_D4EB_4cd2_A707_757CDE9EC9EC" end="EAID_FEB7F827_B053_4f45_B04C_FD5ABDACF252"/>
					<Association xmi:id="EAID_96A42E29_350E_43ea_9445_328772D3D3C1" start="EAID_BE145EF8_3054_4b41_ABF8_23A90BB5F4D2" end="EAID_FEB7F827_B053_4f45_B04C_FD5ABDACF252"/>
				</links>
			</element>
			<element xmi:idref="EAID_494A45F6_51BE_4989_9E35_69DB61EC1EB4" xmi:type="uml:Class" name="Document" scope="public">
				<model package="EAPK_251C3D9E_572F_489f_A441_FE800ED72348" tpos="0" ea_localid="99" ea_eleType="element"/>
				<properties isSpecification="false" sType="Class" nType="0" scope="public" isRoot="false" isLeaf="false" isAbstract="false" isActive="false"/>
				<project author="Valued Customer" version="1.0" phase="1.0" created="2013-06-23 21:24:09" modified="2013-07-13 21:23:59" complexity="1" status="Proposed"/>
				<code gentype="Java"/>
				<style appearance="BackColor=9549311;BorderColor=-1;BorderWidth=1;FontColor=-1;VSwimLanes=1;HSwimLanes=1;BorderStyle=0;"/>
				<modelDocument/>
				<tags/>
				<xrefs value="$XREFPROP=$XID={D24C69A1-B72F-4b15-A173-DBD2323BC59C}$XID;$NAM=CustomProperties$NAM;$TYP=element property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isActive@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={494A45F6-51BE-4989-9E35-69DB61EC1EB4}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
				<extendedProperties tagged="0" package_name="Class Model"/>
				<attributes>
					<attribute xmi:idref="EAID_96F62FA3_A0A4_418c_A7B3_6A34A92E889F" name="nombre" scope="Private">
						<initial/>
						<documentation/>
						<model ea_localid="71" ea_guid="{96F62FA3-A0A4-418c-A7B3-6A34A92E889F}"/>
						<properties type="char" derived="0" collection="false" duplicates="0" changeability="changeable"/>
						<coords ordered="0"/>
						<containment containment="Not Specified" position="0"/>
						<stereotype/>
						<bounds lower="1" upper="1"/>
						<options/>
						<style/>
						<styleex value="volatile=0;"/>
						<tags/>
						<xrefs/>
					</attribute>
					<attribute xmi:idref="EAID_BC4BC6A3_C3B6_48ed_9E9E_8CFCD05B027B" name="extension" scope="Private">
						<initial/>
						<documentation/>
						<model ea_localid="72" ea_guid="{BC4BC6A3-C3B6-48ed-9E9E-8CFCD05B027B}"/>
						<properties type="char" derived="0" collection="false" duplicates="0" changeability="changeable"/>
						<coords ordered="0"/>
						<containment containment="Not Specified" position="1"/>
						<stereotype/>
						<bounds lower="1" upper="1"/>
						<options/>
						<style/>
						<styleex value="volatile=0;"/>
						<tags/>
						<xrefs/>
					</attribute>
					<attribute xmi:idref="EAID_5DE85A87_5F80_4da5_9AFB_47038D2D4BD7" name="directorio" scope="Private">
						<initial/>
						<documentation/>
						<model ea_localid="73" ea_guid="{5DE85A87-5F80-4da5-9AFB-47038D2D4BD7}"/>
						<properties type="char" derived="0" collection="false" duplicates="0" changeability="changeable"/>
						<coords ordered="0"/>
						<containment containment="Not Specified" position="2"/>
						<stereotype/>
						<bounds lower="1" upper="1"/>
						<options/>
						<style/>
						<styleex value="volatile=0;"/>
						<tags/>
						<xrefs/>
					</attribute>
				</attributes>
				<links>
					<Association xmi:id="EAID_3E93BDB2_46A2_4c2e_BECA_E598270EEBD1" start="EAID_DB6D4F90_8A74_4253_A05F_15E389F9E7BF" end="EAID_494A45F6_51BE_4989_9E35_69DB61EC1EB4"/>
					<Association xmi:id="EAID_823DDB52_E6E6_40da_B66B_5841F3CA63D9" start="EAID_BE145EF8_3054_4b41_ABF8_23A90BB5F4D2" end="EAID_494A45F6_51BE_4989_9E35_69DB61EC1EB4"/>
				</links>
			</element>
			<element xmi:idref="EAID_E6107410_9614_449a_8D2D_E93A9B5DF687" xmi:type="uml:Class" name="Editar" scope="public">
				<model package="EAPK_251C3D9E_572F_489f_A441_FE800ED72348" tpos="0" ea_localid="73" ea_eleType="element"/>
				<properties isSpecification="false" sType="Class" nType="0" scope="public" isRoot="false" isLeaf="false" isAbstract="false" isActive="false"/>
				<project author="Valued Customer" version="1.0" phase="1.0" created="2012-11-17 12:58:54" modified="2012-11-17 12:59:59" complexity="1" status="Proposed"/>
				<code gentype="Java"/>
				<style appearance="BackColor=16744576;BorderColor=-1;BorderWidth=1;FontColor=-1;VSwimLanes=1;HSwimLanes=1;BorderStyle=0;"/>
				<modelDocument/>
				<tags/>
				<xrefs value="$XREFPROP=$XID={861D715A-0983-499c-AED0-7DDB8DF07B02}$XID;$NAM=CustomProperties$NAM;$TYP=element property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isActive@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={E6107410-9614-449a-8D2D-E93A9B5DF687}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
				<extendedProperties tagged="0" package_name="Class Model"/>
				<links>
					<Generalization xmi:id="EAID_DE36CD73_D70E_41e2_90F5_F3E9C3CF0B62" start="EAID_E6107410_9614_449a_8D2D_E93A9B5DF687" end="EAID_3162AFD6_616D_4336_AE4C_34EB9D1B3488"/>
				</links>
			</element>
			<element xmi:idref="EAID_912BC6F8_FB18_4416_9432_1AD48775676D" xmi:type="uml:Class" name="Estado" scope="public">
				<model package="EAPK_251C3D9E_572F_489f_A441_FE800ED72348" tpos="0" ea_localid="55" ea_eleType="element"/>
				<properties isSpecification="false" sType="Class" nType="0" scope="public" isRoot="false" isLeaf="false" isAbstract="false" isActive="false"/>
				<project author="Valued Customer" version="1.0" phase="1.0" created="2012-11-09 22:41:38" modified="2013-06-23 16:49:11" complexity="1" status="Proposed"/>
				<code gentype="Java"/>
				<style appearance="BackColor=7452927;BorderColor=-1;BorderWidth=1;FontColor=-1;VSwimLanes=1;HSwimLanes=1;BorderStyle=0;"/>
				<modelDocument/>
				<tags/>
				<xrefs value="$XREFPROP=$XID={18B3CF41-178C-40a8-8987-3E1C6EB61005}$XID;$NAM=CustomProperties$NAM;$TYP=element property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isActive@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={912BC6F8-FB18-4416-9432-1AD48775676D}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
				<extendedProperties tagged="0" package_name="Class Model"/>
				<attributes>
					<attribute xmi:idref="EAID_887EAE32_8241_48b7_9CB2_FD9EED958D79" name="nombre" scope="Private">
						<initial/>
						<documentation/>
						<model ea_localid="56" ea_guid="{887EAE32-8241-48b7-9CB2-FD9EED958D79}"/>
						<properties type="char" derived="0" collection="false" duplicates="0" changeability="changeable"/>
						<coords ordered="0"/>
						<containment containment="Not Specified" position="0"/>
						<stereotype/>
						<bounds lower="1" upper="1"/>
						<options/>
						<style/>
						<styleex value="volatile=0;"/>
						<tags/>
						<xrefs/>
					</attribute>
					<attribute xmi:idref="EAID_C4E7E61B_0F7A_474a_A539_5D00D54CE9AE" name="descripcion" scope="Private">
						<initial/>
						<documentation/>
						<model ea_localid="57" ea_guid="{C4E7E61B-0F7A-474a-A539-5D00D54CE9AE}"/>
						<properties type="char" derived="0" collection="false" duplicates="0" changeability="changeable"/>
						<coords ordered="0"/>
						<containment containment="Not Specified" position="1"/>
						<stereotype/>
						<bounds lower="1" upper="1"/>
						<options/>
						<style/>
						<styleex value="volatile=0;"/>
						<tags/>
						<xrefs/>
					</attribute>
				</attributes>
				<links>
					<Association xmi:id="EAID_0C2D7E9D_2E1A_4eaf_A206_17D849AAE750" start="EAID_FEB7F827_B053_4f45_B04C_FD5ABDACF252" end="EAID_912BC6F8_FB18_4416_9432_1AD48775676D"/>
					<NoteLink xmi:id="EAID_309B3175_69C9_4aea_AAD2_56C20D8ABBB4" start="EAID_F3421EFA_73DA_4666_A102_BDC5DE63DB87" end="EAID_912BC6F8_FB18_4416_9432_1AD48775676D"/>
					<Association xmi:id="EAID_6BBF6416_9370_4de1_A9F1_8618110BF8CC" start="EAID_FEB7F827_B053_4f45_B04C_FD5ABDACF252" end="EAID_912BC6F8_FB18_4416_9432_1AD48775676D"/>
				</links>
			</element>
			<element xmi:idref="EAID_6CB52BAE_49D2_4ea3_81BE_B04CC15BD9AB" xmi:type="uml:Class" name="Formulario" scope="public">
				<model package="EAPK_251C3D9E_572F_489f_A441_FE800ED72348" tpos="0" ea_localid="226" ea_eleType="element"/>
				<properties isSpecification="false" sType="Class" nType="0" scope="public" isRoot="false" isLeaf="false" isAbstract="false" isActive="false"/>
				<project author="Usuario" version="1.0" phase="1.0" created="2014-04-25 10:25:30" modified="2014-04-25 10:25:33" complexity="1" status="Proposed"/>
				<code gentype="Java"/>
				<style appearance="BackColor=-1;BorderColor=-1;BorderWidth=-1;FontColor=-1;VSwimLanes=1;HSwimLanes=1;BorderStyle=0;"/>
				<modelDocument/>
				<tags/>
				<xrefs value="$XREFPROP=$XID={97AD6A7A-39BE-46d7-986C-F7C58CFE4D18}$XID;$NAM=CustomProperties$NAM;$TYP=element property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isActive@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={6CB52BAE-49D2-4ea3-81BE-B04CC15BD9AB}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
				<extendedProperties tagged="0" package_name="Class Model"/>
				<attributes>
					<attribute xmi:idref="EAID_737F339A_76C2_4766_8DB5_1DE9515E13A1" name="nombre" scope="Private">
						<initial/>
						<documentation/>
						<model ea_localid="165" ea_guid="{737F339A-76C2-4766-8DB5-1DE9515E13A1}"/>
						<properties type="char" derived="0" collection="false" duplicates="0" changeability="changeable"/>
						<coords ordered="0"/>
						<containment containment="Not Specified" position="0"/>
						<stereotype/>
						<bounds lower="1" upper="1"/>
						<options/>
						<style/>
						<styleex value="volatile=0;"/>
						<tags/>
						<xrefs/>
					</attribute>
					<attribute xmi:idref="EAID_86565F35_BA08_4695_801A_502BE648DD37" name="descripcion" scope="Private">
						<initial/>
						<documentation/>
						<model ea_localid="166" ea_guid="{86565F35-BA08-4695-801A-502BE648DD37}"/>
						<properties type="char" derived="0" collection="false" duplicates="0" changeability="changeable"/>
						<coords ordered="0"/>
						<containment containment="Not Specified" position="1"/>
						<stereotype/>
						<bounds lower="1" upper="1"/>
						<options/>
						<style/>
						<styleex value="volatile=0;"/>
						<tags/>
						<xrefs/>
					</attribute>
				</attributes>
				<links>
					<Association xmi:id="EAID_AFD12064_D744_416c_9929_463B66BB4502" start="EAID_6CB52BAE_49D2_4ea3_81BE_B04CC15BD9AB" end="EAID_7B8740F5_412B_4150_91DF_8C3A06A3C5FB"/>
					<Association xmi:id="EAID_FF0A3986_CAC6_4a7c_8BF8_8566749F83C7" start="EAID_DB6D4F90_8A74_4253_A05F_15E389F9E7BF" end="EAID_6CB52BAE_49D2_4ea3_81BE_B04CC15BD9AB"/>
				</links>
			</element>
			<element xmi:idref="EAID_22B30324_7B92_4f0f_8E5B_235CC3C311DB" xmi:type="uml:Class" name="Grupo" scope="public">
				<model package="EAPK_251C3D9E_572F_489f_A441_FE800ED72348" tpos="0" ea_localid="85" ea_eleType="element"/>
				<properties isSpecification="false" sType="Class" nType="0" scope="public" isRoot="false" isLeaf="false" isAbstract="false" isActive="false"/>
				<project author="Valued Customer" version="1.0" phase="1.0" created="2013-06-22 12:39:19" modified="2013-06-22 12:39:49" complexity="1" status="Proposed"/>
				<code gentype="Java"/>
				<style appearance="BackColor=9680639;BorderColor=-1;BorderWidth=1;FontColor=-1;VSwimLanes=1;HSwimLanes=1;BorderStyle=0;"/>
				<modelDocument/>
				<tags/>
				<xrefs value="$XREFPROP=$XID={53A5AC63-1F0B-4787-B150-D64184CCC091}$XID;$NAM=CustomProperties$NAM;$TYP=element property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isActive@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={22B30324-7B92-4f0f-8E5B-235CC3C311DB}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
				<extendedProperties tagged="0" package_name="Class Model"/>
				<attributes>
					<attribute xmi:idref="EAID_8AE032DD_F040_4f25_A1F9_BEFC897B178B" name="nombre" scope="Private">
						<initial/>
						<documentation/>
						<model ea_localid="61" ea_guid="{8AE032DD-F040-4f25-A1F9-BEFC897B178B}"/>
						<properties type="char" derived="0" collection="false" duplicates="0" changeability="changeable"/>
						<coords ordered="0"/>
						<containment containment="Not Specified" position="0"/>
						<stereotype/>
						<bounds lower="1" upper="1"/>
						<options/>
						<style/>
						<styleex value="volatile=0;"/>
						<tags/>
						<xrefs/>
					</attribute>
				</attributes>
				<links>
					<Association xmi:id="EAID_5F1DD95D_E546_4b97_89F3_A85E61203D8E" start="EAID_22B30324_7B92_4f0f_8E5B_235CC3C311DB" end="EAID_45EC5E8D_6B18_47cd_89C8_75BCE1502DE1"/>
					<Association xmi:id="EAID_6AF2F907_A5DB_47ad_B51F_194EF29CA96D" start="EAID_22B30324_7B92_4f0f_8E5B_235CC3C311DB" end="EAID_D6358D5E_863D_44a7_96D9_9C3E91364044"/>
				</links>
			</element>
			<element xmi:idref="EAID_D177CECD_84CC_4aaf_990C_380C7A16A55B" xmi:type="uml:Class" name="MaquinaEstado" scope="public">
				<model package="EAPK_251C3D9E_572F_489f_A441_FE800ED72348" tpos="0" ea_localid="108" ea_eleType="element"/>
				<properties isSpecification="false" sType="Class" nType="0" scope="public" isRoot="false" isLeaf="false" isAbstract="false" isActive="false"/>
				<project author="Valued Customer" version="1.0" phase="1.0" created="2013-06-29 21:10:57" modified="2013-10-26 15:43:26" complexity="1" status="Proposed"/>
				<code gentype="Java"/>
				<style appearance="BackColor=7452927;BorderColor=-1;BorderWidth=1;FontColor=-1;VSwimLanes=1;HSwimLanes=1;BorderStyle=0;"/>
				<modelDocument/>
				<tags/>
				<xrefs value="$XREFPROP=$XID={A31AC2A8-9390-4599-85A0-E6B7A738E3E4}$XID;$NAM=CustomProperties$NAM;$TYP=element property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isActive@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={D177CECD-84CC-4aaf-990C-380C7A16A55B}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
				<extendedProperties tagged="0" package_name="Class Model"/>
				<attributes>
					<attribute xmi:idref="EAID_317E624A_8572_4088_A9CD_9E7850496265" name="codigo" scope="Private">
						<initial/>
						<documentation/>
						<model ea_localid="138" ea_guid="{317E624A-8572-4088-A9CD-9E7850496265}"/>
						<properties type="char" derived="0" collection="false" duplicates="0" changeability="changeable"/>
						<coords ordered="0"/>
						<containment containment="Not Specified" position="0"/>
						<stereotype/>
						<bounds lower="1" upper="1"/>
						<options/>
						<style/>
						<styleex value="volatile=0;"/>
						<tags/>
						<xrefs/>
					</attribute>
					<attribute xmi:idref="EAID_DD60EE9C_4E36_4279_A015_167BEBDCC25F" name="descripcion" scope="Private">
						<initial/>
						<documentation/>
						<model ea_localid="98" ea_guid="{DD60EE9C-4E36-4279-A015-167BEBDCC25F}"/>
						<properties type="char" derived="0" collection="false" duplicates="0" changeability="changeable"/>
						<coords ordered="0"/>
						<containment containment="Not Specified" position="1"/>
						<stereotype/>
						<bounds lower="1" upper="1"/>
						<options/>
						<style/>
						<styleex value="volatile=0;"/>
						<tags/>
						<xrefs/>
					</attribute>
					<attribute xmi:idref="EAID_7A8B2CFE_F011_46b5_BE9E_E9EE51E34814" name="nombre" scope="Private">
						<initial/>
						<documentation/>
						<model ea_localid="97" ea_guid="{7A8B2CFE-F011-46b5-BE9E-E9EE51E34814}"/>
						<properties type="char" derived="0" collection="false" duplicates="0" changeability="changeable"/>
						<coords ordered="0"/>
						<containment containment="Not Specified" position="2"/>
						<stereotype/>
						<bounds lower="1" upper="1"/>
						<options/>
						<style/>
						<styleex value="volatile=0;"/>
						<tags/>
						<xrefs/>
					</attribute>
					<attribute xmi:idref="EAID_8C7385A5_B452_4391_8455_F7C6D771EB77" name="numero" scope="Private">
						<initial/>
						<documentation/>
						<model ea_localid="139" ea_guid="{8C7385A5-B452-4391-8455-F7C6D771EB77}"/>
						<properties type="int" derived="0" collection="false" duplicates="0" changeability="changeable"/>
						<coords ordered="0"/>
						<containment containment="Not Specified" position="3"/>
						<stereotype/>
						<bounds lower="1" upper="1"/>
						<options/>
						<style/>
						<styleex value="volatile=0;"/>
						<tags/>
						<xrefs/>
					</attribute>
				</attributes>
				<links>
					<Association xmi:id="EAID_4B77B922_B452_4cfe_A7E4_EDADC5EB5EDF" start="EAID_D177CECD_84CC_4aaf_990C_380C7A16A55B" end="EAID_38C8A964_D4EB_4cd2_A707_757CDE9EC9EC"/>
					<Association xmi:id="EAID_D27CC9E9_DAE1_4e24_AD83_A04C4844AD24" start="EAID_D177CECD_84CC_4aaf_990C_380C7A16A55B" end="EAID_D177CECD_84CC_4aaf_990C_380C7A16A55B"/>
					<Association xmi:id="EAID_B1F885E5_5EA6_4607_BD57_C2659E7B9099" start="EAID_BE145EF8_3054_4b41_ABF8_23A90BB5F4D2" end="EAID_D177CECD_84CC_4aaf_990C_380C7A16A55B"/>
					<Generalization xmi:id="EAID_B64D968A_3739_4811_ADAA_E6D8B216885A" start="EAID_FE7F224E_CFE5_4b65_955B_7C2F6DA74495" end="EAID_D177CECD_84CC_4aaf_990C_380C7A16A55B"/>
					<Association xmi:id="EAID_D27CC9E9_DAE1_4e24_AD83_A04C4844AD24" start="EAID_D177CECD_84CC_4aaf_990C_380C7A16A55B" end="EAID_D177CECD_84CC_4aaf_990C_380C7A16A55B"/>
				</links>
			</element>
			<element xmi:idref="EAID_3162AFD6_616D_4336_AE4C_34EB9D1B3488" xmi:type="uml:Class" name="Operacion" scope="public">
				<model package="EAPK_251C3D9E_572F_489f_A441_FE800ED72348" tpos="0" ea_localid="68" ea_eleType="element"/>
				<properties isSpecification="false" sType="Class" nType="0" scope="public" isRoot="false" isLeaf="false" isAbstract="false" isActive="false"/>
				<project author="Valued Customer" version="1.0" phase="1.0" created="2012-11-17 12:06:47" modified="2012-11-17 14:38:21" complexity="1" status="Proposed"/>
				<code gentype="Java"/>
				<style appearance="BackColor=16744576;BorderColor=-1;BorderWidth=1;FontColor=-1;VSwimLanes=1;HSwimLanes=1;BorderStyle=0;"/>
				<modelDocument/>
				<tags/>
				<xrefs value="$XREFPROP=$XID={468396F4-0FBB-470e-8ACC-33B33C593B37}$XID;$NAM=CustomProperties$NAM;$TYP=element property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isActive@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={3162AFD6-616D-4336-AE4C-34EB9D1B3488}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
				<extendedProperties tagged="0" package_name="Class Model"/>
				<attributes>
					<attribute xmi:idref="EAID_A088C7E5_0338_44b3_8491_7B97C9C861AB" name="clase" scope="Private">
						<initial/>
						<documentation/>
						<model ea_localid="89" ea_guid="{A088C7E5-0338-44b3-8491-7B97C9C861AB}"/>
						<properties type="char" derived="0" collection="false" duplicates="0" changeability="changeable"/>
						<coords ordered="0"/>
						<containment containment="Not Specified" position="0"/>
						<stereotype/>
						<bounds lower="1" upper="1"/>
						<options/>
						<style/>
						<styleex value="volatile=0;"/>
						<tags/>
						<xrefs/>
					</attribute>
					<attribute xmi:idref="EAID_6043F0B9_FC75_4e7a_815B_CDBC6D7C8795" name="variable" scope="Private">
						<initial/>
						<documentation/>
						<model ea_localid="90" ea_guid="{6043F0B9-FC75-4e7a-815B-CDBC6D7C8795}"/>
						<properties type="char" derived="0" collection="false" duplicates="0" changeability="changeable"/>
						<coords ordered="0"/>
						<containment containment="Not Specified" position="1"/>
						<stereotype/>
						<bounds lower="1" upper="1"/>
						<options/>
						<style/>
						<styleex value="volatile=0;"/>
						<tags/>
						<xrefs/>
					</attribute>
				</attributes>
				<links>
					<Dependency xmi:id="EAID_A0B1B089_F217_4d63_9D88_FACF60C1156B" start="EAID_3162AFD6_616D_4336_AE4C_34EB9D1B3488" end="EAID_1B36C7BA_F634_4898_879E_D309C09CC6D0"/>
					<Generalization xmi:id="EAID_14CB2FEB_3D57_41cf_91E5_0FB13B6F6CE4" start="EAID_CEF9C3D7_F0C2_482e_B16B_A3CC89B10464" end="EAID_3162AFD6_616D_4336_AE4C_34EB9D1B3488"/>
					<Association xmi:id="EAID_981508D0_5373_4349_A263_5D78463468D6" start="EAID_D6358D5E_863D_44a7_96D9_9C3E91364044" end="EAID_3162AFD6_616D_4336_AE4C_34EB9D1B3488"/>
					<Generalization xmi:id="EAID_DE36CD73_D70E_41e2_90F5_F3E9C3CF0B62" start="EAID_E6107410_9614_449a_8D2D_E93A9B5DF687" end="EAID_3162AFD6_616D_4336_AE4C_34EB9D1B3488"/>
				</links>
			</element>
			<element xmi:idref="EAID_AFEEBDB2_0B99_427c_BAC5_50B68B2A1C48" xmi:type="uml:Class" name="Organismo" scope="public">
				<model package="EAPK_251C3D9E_572F_489f_A441_FE800ED72348" tpos="0" ea_localid="225" ea_eleType="element"/>
				<properties isSpecification="false" sType="Class" nType="0" scope="public" isRoot="false" isLeaf="false" isAbstract="false" isActive="false"/>
				<project author="Usuario" version="1.0" phase="1.0" created="2014-04-24 15:58:30" modified="2014-04-24 15:58:55" complexity="1" status="Proposed"/>
				<code gentype="Java"/>
				<style appearance="BackColor=-1;BorderColor=-1;BorderWidth=-1;FontColor=-1;VSwimLanes=1;HSwimLanes=1;BorderStyle=0;"/>
				<modelDocument/>
				<tags/>
				<xrefs value="$XREFPROP=$XID={DA0E6C61-560E-46d6-9ECA-02A12B5A2D0F}$XID;$NAM=CustomProperties$NAM;$TYP=element property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isActive@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={AFEEBDB2-0B99-427c-BAC5-50B68B2A1C48}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
				<extendedProperties tagged="0" package_name="Class Model"/>
				<attributes>
					<attribute xmi:idref="EAID_9849CD59_ACFA_4f52_B780_DD42D4384DCB" name="nombre" scope="Private">
						<initial/>
						<documentation/>
						<model ea_localid="147" ea_guid="{9849CD59-ACFA-4f52-B780-DD42D4384DCB}"/>
						<properties type="char" derived="0" collection="false" duplicates="0" changeability="changeable"/>
						<coords ordered="0"/>
						<containment containment="Not Specified" position="0"/>
						<stereotype/>
						<bounds lower="1" upper="1"/>
						<options/>
						<style/>
						<styleex value="volatile=0;"/>
						<tags/>
						<xrefs/>
					</attribute>
					<attribute xmi:idref="EAID_7ACD5141_CF9D_4329_B40E_3A3F60055251" name="inciso" scope="Private">
						<initial/>
						<documentation/>
						<model ea_localid="148" ea_guid="{7ACD5141-CF9D-4329-B40E-3A3F60055251}"/>
						<properties type="char" derived="0" collection="false" duplicates="0" changeability="changeable"/>
						<coords ordered="0"/>
						<containment containment="Not Specified" position="1"/>
						<stereotype/>
						<bounds lower="1" upper="1"/>
						<options/>
						<style/>
						<styleex value="volatile=0;"/>
						<tags/>
						<xrefs/>
					</attribute>
					<attribute xmi:idref="EAID_F50405BC_E7CA_43a6_91A1_CE8899E5C900" name="unidadEjecutora" scope="Private">
						<initial/>
						<documentation/>
						<model ea_localid="149" ea_guid="{F50405BC-E7CA-43a6-91A1-CE8899E5C900}"/>
						<properties type="char" derived="0" collection="false" duplicates="0" changeability="changeable"/>
						<coords ordered="0"/>
						<containment containment="Not Specified" position="2"/>
						<stereotype/>
						<bounds lower="1" upper="1"/>
						<options/>
						<style/>
						<styleex value="volatile=0;"/>
						<tags/>
						<xrefs/>
					</attribute>
				</attributes>
				<links>
					<Association xmi:id="EAID_C7788AF2_4D96_46cd_8B26_96CD81D95752" start="EAID_AFEEBDB2_0B99_427c_BAC5_50B68B2A1C48" end="EAID_DB6D4F90_8A74_4253_A05F_15E389F9E7BF"/>
					<Association xmi:id="EAID_E9AED687_E073_42f0_9721_0034CE06B021" start="EAID_AFEEBDB2_0B99_427c_BAC5_50B68B2A1C48" end="EAID_1E20EBB1_2E74_4f5a_9D4F_ABCBC4FA9468"/>
				</links>
			</element>
			<element xmi:idref="EAID_6C8173D9_7C14_443b_BA64_2EF4ECB491A4" xmi:type="uml:Class" name="Permiso" scope="public">
				<model package="EAPK_251C3D9E_572F_489f_A441_FE800ED72348" tpos="0" ea_localid="83" ea_eleType="element"/>
				<properties isSpecification="false" sType="Class" nType="0" scope="public" isRoot="false" isLeaf="false" isAbstract="false" isActive="false"/>
				<project author="Valued Customer" version="1.0" phase="1.0" created="2012-11-17 14:43:46" modified="2012-11-17 14:52:21" complexity="1" status="Proposed"/>
				<code gentype="Java"/>
				<style appearance="BackColor=9145285;BorderColor=-1;BorderWidth=1;FontColor=-1;VSwimLanes=1;HSwimLanes=1;BorderStyle=0;"/>
				<modelDocument/>
				<tags/>
				<xrefs value="$XREFPROP=$XID={3B019082-9780-4102-9296-44A4A89D77B8}$XID;$NAM=CustomProperties$NAM;$TYP=element property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isActive@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={6C8173D9-7C14-443b-BA64-2EF4ECB491A4}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
				<extendedProperties tagged="0" package_name="Class Model"/>
				<links>
					<Generalization xmi:id="EAID_A580BC3B_9F70_411f_BE46_97C7D71D18A8" start="EAID_6C8173D9_7C14_443b_BA64_2EF4ECB491A4" end="EAID_1B36C7BA_F634_4898_879E_D309C09CC6D0"/>
				</links>
			</element>
			<element xmi:idref="EAID_45EC5E8D_6B18_47cd_89C8_75BCE1502DE1" xmi:type="uml:Class" name="Persona" scope="public">
				<model package="EAPK_251C3D9E_572F_489f_A441_FE800ED72348" tpos="0" ea_localid="67" ea_eleType="element"/>
				<properties isSpecification="false" sType="Class" nType="0" scope="public" isRoot="false" isLeaf="false" isAbstract="false" isActive="false"/>
				<project author="Valued Customer" version="1.0" phase="1.0" created="2012-11-16 23:18:33" modified="2012-11-16 23:18:57" complexity="1" status="Proposed"/>
				<code gentype="Java"/>
				<style appearance="BackColor=8563455;BorderColor=-1;BorderWidth=1;FontColor=-1;VSwimLanes=1;HSwimLanes=1;BorderStyle=0;"/>
				<modelDocument/>
				<tags/>
				<xrefs value="$XREFPROP=$XID={55793EDB-219E-4c8c-A371-C46B8FB9DFB6}$XID;$NAM=CustomProperties$NAM;$TYP=element property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isActive@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={45EC5E8D-6B18-47cd-89C8-75BCE1502DE1}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
				<extendedProperties tagged="0" package_name="Class Model"/>
				<attributes>
					<attribute xmi:idref="EAID_D61EA8DE_656A_4e68_BEAA_854EC3B779CB" name="apellido" scope="Private">
						<initial/>
						<documentation/>
						<model ea_localid="50" ea_guid="{D61EA8DE-656A-4e68-BEAA-854EC3B779CB}"/>
						<properties type="char" derived="0" collection="false" duplicates="0" changeability="changeable"/>
						<coords ordered="0"/>
						<containment containment="Not Specified" position="0"/>
						<stereotype/>
						<bounds lower="1" upper="1"/>
						<options/>
						<style/>
						<styleex value="volatile=0;"/>
						<tags/>
						<xrefs/>
					</attribute>
					<attribute xmi:idref="EAID_E14443D0_9366_42a1_AEDD_0813DA398A54" name="clave" scope="Private">
						<initial/>
						<documentation/>
						<model ea_localid="51" ea_guid="{E14443D0-9366-42a1-AEDD-0813DA398A54}"/>
						<properties type="char" derived="0" collection="false" duplicates="0" changeability="changeable"/>
						<coords ordered="0"/>
						<containment containment="Not Specified" position="1"/>
						<stereotype/>
						<bounds lower="1" upper="1"/>
						<options/>
						<style/>
						<styleex value="volatile=0;"/>
						<tags/>
						<xrefs/>
					</attribute>
					<attribute xmi:idref="EAID_3C699B44_3268_45e8_8B13_C18FFEA41774" name="mail" scope="Private">
						<initial/>
						<documentation/>
						<model ea_localid="52" ea_guid="{3C699B44-3268-45e8-8B13-C18FFEA41774}"/>
						<properties type="char" derived="0" collection="false" duplicates="0" changeability="changeable"/>
						<coords ordered="0"/>
						<containment containment="Not Specified" position="2"/>
						<stereotype/>
						<bounds lower="1" upper="1"/>
						<options/>
						<style/>
						<styleex value="volatile=0;"/>
						<tags/>
						<xrefs/>
					</attribute>
					<attribute xmi:idref="EAID_3C67FDC4_4756_4d81_83D5_31DC8E67B27B" name="nombre" scope="Private">
						<initial/>
						<documentation/>
						<model ea_localid="53" ea_guid="{3C67FDC4-4756-4d81-83D5-31DC8E67B27B}"/>
						<properties type="char" derived="0" collection="false" duplicates="0" changeability="changeable"/>
						<coords ordered="0"/>
						<containment containment="Not Specified" position="3"/>
						<stereotype/>
						<bounds lower="1" upper="1"/>
						<options/>
						<style/>
						<styleex value="volatile=0;"/>
						<tags/>
						<xrefs/>
					</attribute>
					<attribute xmi:idref="EAID_1B16BD85_3A48_45c5_ABBC_03CC74DBF3DF" name="telefono" scope="Private">
						<initial/>
						<documentation/>
						<model ea_localid="54" ea_guid="{1B16BD85-3A48-45c5-ABBC-03CC74DBF3DF}"/>
						<properties type="char" derived="0" collection="false" duplicates="0" changeability="changeable"/>
						<coords ordered="0"/>
						<containment containment="Not Specified" position="4"/>
						<stereotype/>
						<bounds lower="1" upper="1"/>
						<options/>
						<style/>
						<styleex value="volatile=0;"/>
						<tags/>
						<xrefs/>
					</attribute>
					<attribute xmi:idref="EAID_1990081E_70AD_4a93_B739_F8FF7C33EA75" name="celular" scope="Private">
						<initial/>
						<documentation/>
						<model ea_localid="55" ea_guid="{1990081E-70AD-4a93-B739-F8FF7C33EA75}"/>
						<properties type="char" derived="0" collection="false" duplicates="0" changeability="changeable"/>
						<coords ordered="0"/>
						<containment containment="Not Specified" position="5"/>
						<stereotype/>
						<bounds lower="1" upper="1"/>
						<options/>
						<style/>
						<styleex value="volatile=0;"/>
						<tags/>
						<xrefs/>
					</attribute>
				</attributes>
				<links>
					<Association xmi:id="EAID_5F1DD95D_E546_4b97_89F3_A85E61203D8E" start="EAID_22B30324_7B92_4f0f_8E5B_235CC3C311DB" end="EAID_45EC5E8D_6B18_47cd_89C8_75BCE1502DE1"/>
					<Generalization xmi:id="EAID_E9EFA9B0_AA4B_47bb_B785_823C4F0363D6" start="EAID_1E20EBB1_2E74_4f5a_9D4F_ABCBC4FA9468" end="EAID_45EC5E8D_6B18_47cd_89C8_75BCE1502DE1"/>
				</links>
			</element>
			<element xmi:idref="EAID_1E20EBB1_2E74_4f5a_9D4F_ABCBC4FA9468" xmi:type="uml:Class" name="PersonaRegistro" scope="public">
				<model package="EAPK_251C3D9E_572F_489f_A441_FE800ED72348" tpos="0" ea_localid="202" ea_eleType="element"/>
				<properties isSpecification="false" sType="Class" nType="0" scope="public" isRoot="false" isLeaf="false" isAbstract="false" isActive="false"/>
				<project author="Usuario" version="1.0" phase="1.0" created="2013-10-27 22:03:15" modified="2014-04-04 20:17:11" complexity="1" status="Proposed"/>
				<code gentype="Java"/>
				<style appearance="BackColor=4227200;BorderColor=-1;BorderWidth=1;FontColor=-1;VSwimLanes=1;HSwimLanes=1;BorderStyle=0;"/>
				<modelDocument/>
				<tags/>
				<xrefs value="$XREFPROP=$XID={D5DA6CF3-440F-498e-8B68-FC7331D85378}$XID;$NAM=CustomProperties$NAM;$TYP=element property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isActive@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={1E20EBB1-2E74-4f5a-9D4F-ABCBC4FA9468}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
				<extendedProperties tagged="0" package_name="Class Model"/>
				<links>
					<Generalization xmi:id="EAID_E9EFA9B0_AA4B_47bb_B785_823C4F0363D6" start="EAID_1E20EBB1_2E74_4f5a_9D4F_ABCBC4FA9468" end="EAID_45EC5E8D_6B18_47cd_89C8_75BCE1502DE1"/>
					<Association xmi:id="EAID_E9AED687_E073_42f0_9721_0034CE06B021" start="EAID_AFEEBDB2_0B99_427c_BAC5_50B68B2A1C48" end="EAID_1E20EBB1_2E74_4f5a_9D4F_ABCBC4FA9468"/>
					<Association xmi:id="EAID_ED27E60E_B56F_4457_ABE5_417D16E8B5CD" start="EAID_DB6D4F90_8A74_4253_A05F_15E389F9E7BF" end="EAID_1E20EBB1_2E74_4f5a_9D4F_ABCBC4FA9468"/>
				</links>
			</element>
			<element xmi:idref="EAID_1B36C7BA_F634_4898_879E_D309C09CC6D0" xmi:type="uml:Class" name="PoliticaPermisos" scope="public">
				<model package="EAPK_251C3D9E_572F_489f_A441_FE800ED72348" tpos="0" ea_localid="82" ea_eleType="element"/>
				<properties isSpecification="false" sType="Class" nType="0" scope="public" isRoot="false" isLeaf="false" isAbstract="false" isActive="false"/>
				<project author="Valued Customer" version="1.0" phase="1.0" created="2012-11-17 14:42:52" modified="2012-11-17 14:52:03" complexity="1" status="Proposed"/>
				<code gentype="Java"/>
				<style appearance="BackColor=9145285;BorderColor=-1;BorderWidth=1;FontColor=-1;VSwimLanes=1;HSwimLanes=1;BorderStyle=0;"/>
				<modelDocument/>
				<tags/>
				<xrefs value="$XREFPROP=$XID={DCEFEB99-DAA4-4668-9C2A-E84F282C4A2C}$XID;$NAM=CustomProperties$NAM;$TYP=element property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isActive@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={1B36C7BA-F634-4898-879E-D309C09CC6D0}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
				<extendedProperties tagged="0" package_name="Class Model"/>
				<links>
					<Generalization xmi:id="EAID_0163DA6E_2073_4ab5_8721_A3BE228736E0" start="EAID_86E9893F_8AEA_4493_BD1D_554C280E0A34" end="EAID_1B36C7BA_F634_4898_879E_D309C09CC6D0"/>
					<Dependency xmi:id="EAID_A0B1B089_F217_4d63_9D88_FACF60C1156B" start="EAID_3162AFD6_616D_4336_AE4C_34EB9D1B3488" end="EAID_1B36C7BA_F634_4898_879E_D309C09CC6D0"/>
					<Generalization xmi:id="EAID_A580BC3B_9F70_411f_BE46_97C7D71D18A8" start="EAID_6C8173D9_7C14_443b_BA64_2EF4ECB491A4" end="EAID_1B36C7BA_F634_4898_879E_D309C09CC6D0"/>
				</links>
			</element>
			<element xmi:idref="EAID_FE7F224E_CFE5_4b65_955B_7C2F6DA74495" xmi:type="uml:Class" name="ProcesoRegistro" scope="public">
				<model package="EAPK_251C3D9E_572F_489f_A441_FE800ED72348" tpos="0" ea_localid="216" ea_eleType="element"/>
				<properties isSpecification="false" sType="Class" nType="0" scope="public" isRoot="false" isLeaf="false" isAbstract="false" isActive="false"/>
				<project author="Usuario" version="1.0" phase="1.0" created="2013-11-03 15:44:33" modified="2014-04-04 22:40:30" complexity="1" status="Proposed"/>
				<code gentype="Java"/>
				<style appearance="BackColor=4227200;BorderColor=-1;BorderWidth=1;FontColor=-1;VSwimLanes=1;HSwimLanes=1;BorderStyle=0;"/>
				<modelDocument/>
				<tags/>
				<xrefs value="$XREFPROP=$XID={5E799D4E-0150-4ebc-ACD7-4A5C5AA46ED7}$XID;$NAM=CustomProperties$NAM;$TYP=element property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isActive@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={FE7F224E-CFE5-4b65-955B-7C2F6DA74495}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
				<extendedProperties tagged="0" package_name="Class Model"/>
				<links>
					<Generalization xmi:id="EAID_B64D968A_3739_4811_ADAA_E6D8B216885A" start="EAID_FE7F224E_CFE5_4b65_955B_7C2F6DA74495" end="EAID_D177CECD_84CC_4aaf_990C_380C7A16A55B"/>
					<Association xmi:id="EAID_E9C5BCDE_0BA6_4394_AA09_4B6F7230BEB8" start="EAID_DB6D4F90_8A74_4253_A05F_15E389F9E7BF" end="EAID_FE7F224E_CFE5_4b65_955B_7C2F6DA74495"/>
				</links>
			</element>
			<element xmi:idref="EAID_DB6D4F90_8A74_4253_A05F_15E389F9E7BF" xmi:type="uml:Class" name="Registro" scope="public">
				<model package="EAPK_251C3D9E_572F_489f_A441_FE800ED72348" tpos="0" ea_localid="219" ea_eleType="element"/>
				<properties isSpecification="false" sType="Class" nType="0" scope="public" isRoot="false" isLeaf="false" isAbstract="false" isActive="false"/>
				<project author="Usuario" version="1.0" phase="1.0" created="2014-04-04 20:18:59" modified="2014-04-04 20:19:03" complexity="1" status="Proposed"/>
				<code gentype="Java"/>
				<style appearance="BackColor=-1;BorderColor=-1;BorderWidth=-1;FontColor=-1;VSwimLanes=1;HSwimLanes=1;BorderStyle=0;"/>
				<modelDocument/>
				<tags/>
				<xrefs value="$XREFPROP=$XID={B750EBD7-6C1B-4193-A48E-80C516D4A454}$XID;$NAM=CustomProperties$NAM;$TYP=element property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isActive@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={DB6D4F90-8A74-4253-A05F-15E389F9E7BF}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
				<extendedProperties tagged="0" package_name="Class Model"/>
				<attributes>
					<attribute xmi:idref="EAID_B73F6A58_27E6_469a_A0C9_117453A94555" name="id" scope="Private">
						<initial/>
						<documentation/>
						<model ea_localid="141" ea_guid="{B73F6A58-27E6-469a-A0C9-117453A94555}"/>
						<properties type="int" derived="0" collection="false" duplicates="0" changeability="changeable"/>
						<coords ordered="0"/>
						<containment containment="Not Specified" position="0"/>
						<stereotype/>
						<bounds lower="1" upper="1"/>
						<options/>
						<style/>
						<styleex value="volatile=0;"/>
						<tags/>
						<xrefs/>
					</attribute>
					<attribute xmi:idref="EAID_D29A48F0_3CCD_4e96_895C_7E5D77A642F8" name="fechaHoraCreado" scope="Private">
						<initial/>
						<documentation/>
						<model ea_localid="140" ea_guid="{D29A48F0-3CCD-4e96-895C-7E5D77A642F8}"/>
						<properties type="timeStamp" derived="0" collection="false" duplicates="0" changeability="changeable"/>
						<coords ordered="0"/>
						<containment containment="Not Specified" position="1"/>
						<stereotype/>
						<bounds lower="1" upper="1"/>
						<options/>
						<style/>
						<styleex value="volatile=0;"/>
						<tags/>
						<xrefs/>
					</attribute>
					<attribute xmi:idref="EAID_810A5048_89B7_4e97_951E_F9174094C432" name="descripcion" scope="Private">
						<initial/>
						<documentation/>
						<model ea_localid="142" ea_guid="{810A5048-89B7-4e97-951E-F9174094C432}"/>
						<properties type="char" derived="0" collection="false" duplicates="0" changeability="changeable"/>
						<coords ordered="0"/>
						<containment containment="Not Specified" position="2"/>
						<stereotype/>
						<bounds lower="1" upper="1"/>
						<options/>
						<style/>
						<styleex value="volatile=0;"/>
						<tags/>
						<xrefs/>
					</attribute>
					<attribute xmi:idref="EAID_6372404F_7491_4f49_B86F_8016B5836C1D" name="procesarAutomaticamente" scope="Private">
						<initial/>
						<documentation/>
						<model ea_localid="146" ea_guid="{6372404F-7491-4f49-B86F-8016B5836C1D}"/>
						<properties type="boolean" derived="0" collection="false" duplicates="0" changeability="changeable"/>
						<coords ordered="0"/>
						<containment containment="Not Specified" position="3"/>
						<stereotype/>
						<bounds lower="1" upper="1"/>
						<options/>
						<style/>
						<styleex value="volatile=0;"/>
						<tags/>
						<xrefs/>
					</attribute>
				</attributes>
				<links>
					<Association xmi:id="EAID_3E93BDB2_46A2_4c2e_BECA_E598270EEBD1" start="EAID_DB6D4F90_8A74_4253_A05F_15E389F9E7BF" end="EAID_494A45F6_51BE_4989_9E35_69DB61EC1EB4"/>
					<Association xmi:id="EAID_44FC0EC0_3ECE_4fa5_A59A_42410D2E9CA6" start="EAID_DB6D4F90_8A74_4253_A05F_15E389F9E7BF" end="EAID_936272D8_AEEF_4b92_B5F6_55FD046C216C"/>
					<Association xmi:id="EAID_E9C5BCDE_0BA6_4394_AA09_4B6F7230BEB8" start="EAID_DB6D4F90_8A74_4253_A05F_15E389F9E7BF" end="EAID_FE7F224E_CFE5_4b65_955B_7C2F6DA74495"/>
					<Association xmi:id="EAID_ED27E60E_B56F_4457_ABE5_417D16E8B5CD" start="EAID_DB6D4F90_8A74_4253_A05F_15E389F9E7BF" end="EAID_1E20EBB1_2E74_4f5a_9D4F_ABCBC4FA9468"/>
					<Association xmi:id="EAID_FF0A3986_CAC6_4a7c_8BF8_8566749F83C7" start="EAID_DB6D4F90_8A74_4253_A05F_15E389F9E7BF" end="EAID_6CB52BAE_49D2_4ea3_81BE_B04CC15BD9AB"/>
					<Association xmi:id="EAID_C7788AF2_4D96_46cd_8B26_96CD81D95752" start="EAID_AFEEBDB2_0B99_427c_BAC5_50B68B2A1C48" end="EAID_DB6D4F90_8A74_4253_A05F_15E389F9E7BF"/>
				</links>
			</element>
			<element xmi:idref="EAID_86E9893F_8AEA_4493_BD1D_554C280E0A34" xmi:type="uml:Class" name="Restriccion" scope="public">
				<model package="EAPK_251C3D9E_572F_489f_A441_FE800ED72348" tpos="0" ea_localid="84" ea_eleType="element"/>
				<properties isSpecification="false" sType="Class" nType="0" scope="public" isRoot="false" isLeaf="false" isAbstract="false" isActive="false"/>
				<project author="Valued Customer" version="1.0" phase="1.0" created="2012-11-17 14:43:59" modified="2012-11-17 14:52:11" complexity="1" status="Proposed"/>
				<code gentype="Java"/>
				<style appearance="BackColor=9145285;BorderColor=-1;BorderWidth=1;FontColor=-1;VSwimLanes=1;HSwimLanes=1;BorderStyle=0;"/>
				<modelDocument/>
				<tags/>
				<xrefs value="$XREFPROP=$XID={B17F589D-937E-4ed0-BDE8-64ED8FABE561}$XID;$NAM=CustomProperties$NAM;$TYP=element property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isActive@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={86E9893F-8AEA-4493-BD1D-554C280E0A34}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
				<extendedProperties tagged="0" package_name="Class Model"/>
				<links>
					<Generalization xmi:id="EAID_0163DA6E_2073_4ab5_8721_A3BE228736E0" start="EAID_86E9893F_8AEA_4493_BD1D_554C280E0A34" end="EAID_1B36C7BA_F634_4898_879E_D309C09CC6D0"/>
				</links>
			</element>
			<element xmi:idref="EAID_D6358D5E_863D_44a7_96D9_9C3E91364044" xmi:type="uml:Class" name="Rol" scope="public">
				<model package="EAPK_251C3D9E_572F_489f_A441_FE800ED72348" tpos="0" ea_localid="65" ea_eleType="element"/>
				<properties isSpecification="false" sType="Class" nType="0" scope="public" isRoot="false" isLeaf="false" isAbstract="false" isActive="false"/>
				<project author="Valued Customer" version="1.0" phase="1.0" created="2012-11-16 23:01:59" modified="2012-11-16 23:16:53" complexity="1" status="Proposed"/>
				<code gentype="Java"/>
				<style appearance="BackColor=9680639;BorderColor=-1;BorderWidth=1;FontColor=-1;VSwimLanes=1;HSwimLanes=1;BorderStyle=0;"/>
				<modelDocument/>
				<tags/>
				<xrefs value="$XREFPROP=$XID={60375585-BEBD-4f1b-9F97-C432F7402D19}$XID;$NAM=CustomProperties$NAM;$TYP=element property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isActive@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={D6358D5E-863D-44a7-96D9-9C3E91364044}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
				<extendedProperties tagged="0" package_name="Class Model"/>
				<attributes>
					<attribute xmi:idref="EAID_7405EE86_44C1_4dc0_9ACA_4B1E58294565" name="nombre" scope="Private">
						<initial/>
						<documentation/>
						<model ea_localid="48" ea_guid="{7405EE86-44C1-4dc0-9ACA-4B1E58294565}"/>
						<properties type="char" derived="0" collection="false" duplicates="0" changeability="changeable"/>
						<coords ordered="0"/>
						<containment containment="Not Specified" position="0"/>
						<stereotype/>
						<bounds lower="1" upper="1"/>
						<options/>
						<style/>
						<styleex value="volatile=0;"/>
						<tags/>
						<xrefs/>
					</attribute>
					<attribute xmi:idref="EAID_4F1FD88C_2A55_4e4d_A88F_463B9A6B7701" name="descripcion" scope="Private">
						<initial/>
						<documentation/>
						<model ea_localid="49" ea_guid="{4F1FD88C-2A55-4e4d-A88F-463B9A6B7701}"/>
						<properties type="char" derived="0" collection="false" duplicates="0" changeability="changeable"/>
						<coords ordered="0"/>
						<containment containment="Not Specified" position="1"/>
						<stereotype/>
						<bounds lower="1" upper="1"/>
						<options/>
						<style/>
						<styleex value="volatile=0;"/>
						<tags/>
						<xrefs/>
					</attribute>
				</attributes>
				<links>
					<Association xmi:id="EAID_981508D0_5373_4349_A263_5D78463468D6" start="EAID_D6358D5E_863D_44a7_96D9_9C3E91364044" end="EAID_3162AFD6_616D_4336_AE4C_34EB9D1B3488"/>
					<Association xmi:id="EAID_3E1AE3AB_6C76_4ffb_A619_DDBCBFB6A6B0" start="EAID_FEB7F827_B053_4f45_B04C_FD5ABDACF252" end="EAID_D6358D5E_863D_44a7_96D9_9C3E91364044"/>
					<Association xmi:id="EAID_6AF2F907_A5DB_47ad_B51F_194EF29CA96D" start="EAID_22B30324_7B92_4f0f_8E5B_235CC3C311DB" end="EAID_D6358D5E_863D_44a7_96D9_9C3E91364044"/>
				</links>
			</element>
			<element xmi:idref="EAID_7B8740F5_412B_4150_91DF_8C3A06A3C5FB" xmi:type="uml:Class" name="Seccion" scope="public">
				<model package="EAPK_251C3D9E_572F_489f_A441_FE800ED72348" tpos="0" ea_localid="228" ea_eleType="element"/>
				<properties isSpecification="false" sType="Class" nType="0" scope="public" isRoot="false" isLeaf="false" isAbstract="false" isActive="false"/>
				<project author="Usuario" version="1.0" phase="1.0" created="2014-04-25 10:27:41" modified="2014-04-25 10:27:43" complexity="1" status="Proposed"/>
				<code gentype="Java"/>
				<style appearance="BackColor=-1;BorderColor=-1;BorderWidth=-1;FontColor=-1;VSwimLanes=1;HSwimLanes=1;BorderStyle=0;"/>
				<modelDocument/>
				<tags/>
				<xrefs value="$XREFPROP=$XID={BC99C31E-D08B-4965-86BC-0254D748367C}$XID;$NAM=CustomProperties$NAM;$TYP=element property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isActive@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={7B8740F5-412B-4150-91DF-8C3A06A3C5FB}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
				<extendedProperties tagged="0" package_name="Class Model"/>
				<attributes>
					<attribute xmi:idref="EAID_954B78DB_D9DE_4647_B376_223A6E5EE9A9" name="nombre" scope="Private">
						<initial/>
						<documentation/>
						<model ea_localid="167" ea_guid="{954B78DB-D9DE-4647-B376-223A6E5EE9A9}"/>
						<properties type="char" derived="0" collection="false" duplicates="0" changeability="changeable"/>
						<coords ordered="0"/>
						<containment containment="Not Specified" position="0"/>
						<stereotype/>
						<bounds lower="1" upper="1"/>
						<options/>
						<style/>
						<styleex value="volatile=0;"/>
						<tags/>
						<xrefs/>
					</attribute>
				</attributes>
				<links>
					<Association xmi:id="EAID_9B5A4EF9_D429_4825_8D1D_169C46B7DE57" start="EAID_7B8740F5_412B_4150_91DF_8C3A06A3C5FB" end="EAID_E0F984DE_07AC_408f_AC07_AD83323C322D"/>
					<Association xmi:id="EAID_AFD12064_D744_416c_9929_463B66BB4502" start="EAID_6CB52BAE_49D2_4ea3_81BE_B04CC15BD9AB" end="EAID_7B8740F5_412B_4150_91DF_8C3A06A3C5FB"/>
				</links>
			</element>
			<element xmi:idref="EAID_BE145EF8_3054_4b41_ABF8_23A90BB5F4D2" xmi:type="uml:Class" name="Transicion" scope="public">
				<model package="EAPK_251C3D9E_572F_489f_A441_FE800ED72348" tpos="0" ea_localid="66" ea_eleType="element"/>
				<properties isSpecification="false" sType="Class" nType="0" scope="public" isRoot="false" isLeaf="false" isAbstract="false" isActive="false"/>
				<project author="Valued Customer" version="1.0" phase="1.0" created="2012-11-16 23:14:51" modified="2013-06-23 22:57:04" complexity="1" status="Proposed"/>
				<code gentype="Java"/>
				<style appearance="BackColor=9549311;BorderColor=-1;BorderWidth=1;FontColor=-1;VSwimLanes=1;HSwimLanes=1;BorderStyle=0;"/>
				<modelDocument/>
				<tags/>
				<xrefs value="$XREFPROP=$XID={FBA29DE7-81B8-4729-8751-22BC04949A7D}$XID;$NAM=CustomProperties$NAM;$TYP=element property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isActive@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={BE145EF8-3054-4b41-ABF8-23A90BB5F4D2}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
				<extendedProperties tagged="0" package_name="Class Model"/>
				<attributes>
					<attribute xmi:idref="EAID_9006A1B2_2CAA_49a8_BDBF_2BF7B5ED08E8" name="fechaHoraInicio" scope="Private">
						<initial/>
						<documentation/>
						<model ea_localid="42" ea_guid="{9006A1B2-2CAA-49a8-BDBF-2BF7B5ED08E8}"/>
						<properties type="timestamp" derived="0" collection="false" duplicates="0" changeability="changeable"/>
						<coords ordered="0"/>
						<containment containment="Not Specified" position="0"/>
						<stereotype/>
						<bounds lower="1" upper="1"/>
						<options/>
						<style/>
						<styleex value="volatile=0;"/>
						<tags/>
						<xrefs/>
					</attribute>
					<attribute xmi:idref="EAID_BB0D5822_25C9_4027_879A_8FD47243BC2B" name="fechaHoraFin" scope="Private">
						<initial/>
						<documentation/>
						<model ea_localid="63" ea_guid="{BB0D5822-25C9-4027-879A-8FD47243BC2B}"/>
						<properties type="timestamp" derived="0" collection="false" duplicates="0" changeability="changeable"/>
						<coords ordered="0"/>
						<containment containment="Not Specified" position="1"/>
						<stereotype/>
						<bounds lower="1" upper="1"/>
						<options/>
						<style/>
						<styleex value="volatile=0;"/>
						<tags/>
						<xrefs/>
					</attribute>
					<attribute xmi:idref="EAID_A6A981F0_7241_48eb_8A34_6B072313017A" name="detalle" scope="Private">
						<initial/>
						<documentation/>
						<model ea_localid="43" ea_guid="{A6A981F0-7241-48eb-8A34-6B072313017A}"/>
						<properties type="char" derived="0" collection="false" duplicates="0" changeability="changeable"/>
						<coords ordered="0"/>
						<containment containment="Not Specified" position="2"/>
						<stereotype/>
						<bounds lower="1" upper="1"/>
						<options/>
						<style/>
						<styleex value="volatile=0;"/>
						<tags/>
						<xrefs/>
					</attribute>
					<attribute xmi:idref="EAID_34016014_B778_479b_BC03_A160A13C9359" name="nombre" scope="Private">
						<initial/>
						<documentation/>
						<model ea_localid="58" ea_guid="{34016014-B778-479b-BC03-A160A13C9359}"/>
						<properties type="char" derived="0" collection="false" duplicates="0" changeability="changeable"/>
						<coords ordered="0"/>
						<containment containment="Not Specified" position="3"/>
						<stereotype/>
						<bounds lower="1" upper="1"/>
						<options/>
						<style/>
						<styleex value="volatile=0;"/>
						<tags/>
						<xrefs/>
					</attribute>
					<attribute xmi:idref="EAID_B70E976F_41D9_4546_B790_4851E963B452" name="estado" scope="Private">
						<initial/>
						<documentation/>
						<model ea_localid="62" ea_guid="{B70E976F-41D9-4546-B790-4851E963B452}"/>
						<properties type="char" derived="0" collection="false" duplicates="0" changeability="changeable"/>
						<coords ordered="0"/>
						<containment containment="Not Specified" position="4"/>
						<stereotype/>
						<bounds lower="1" upper="1"/>
						<options/>
						<style/>
						<styleex value="volatile=0;"/>
						<tags/>
						<xrefs/>
					</attribute>
					<attribute xmi:idref="EAID_FCFDF732_D0B5_4094_AD7E_D29B3112DEED" name="multipleAprobacion" scope="Private">
						<initial/>
						<documentation/>
						<model ea_localid="81" ea_guid="{FCFDF732-D0B5-4094-AD7E-D29B3112DEED}"/>
						<properties type="char" derived="0" collection="false" duplicates="0" changeability="changeable"/>
						<coords ordered="0"/>
						<containment containment="Not Specified" position="5"/>
						<stereotype/>
						<bounds lower="1" upper="1"/>
						<options/>
						<style/>
						<styleex value="volatile=0;"/>
						<tags/>
						<xrefs/>
					</attribute>
				</attributes>
				<links>
					<Association xmi:id="EAID_823DDB52_E6E6_40da_B66B_5841F3CA63D9" start="EAID_BE145EF8_3054_4b41_ABF8_23A90BB5F4D2" end="EAID_494A45F6_51BE_4989_9E35_69DB61EC1EB4"/>
					<Association xmi:id="EAID_96A42E29_350E_43ea_9445_328772D3D3C1" start="EAID_BE145EF8_3054_4b41_ABF8_23A90BB5F4D2" end="EAID_FEB7F827_B053_4f45_B04C_FD5ABDACF252"/>
					<Association xmi:id="EAID_B1F885E5_5EA6_4607_BD57_C2659E7B9099" start="EAID_BE145EF8_3054_4b41_ABF8_23A90BB5F4D2" end="EAID_D177CECD_84CC_4aaf_990C_380C7A16A55B"/>
				</links>
			</element>
			<element xmi:idref="EAID_CEF9C3D7_F0C2_482e_B16B_A3CC89B10464" xmi:type="uml:Class" name="Ver" scope="public">
				<model package="EAPK_251C3D9E_572F_489f_A441_FE800ED72348" tpos="0" ea_localid="69" ea_eleType="element"/>
				<properties isSpecification="false" sType="Class" nType="0" scope="public" isRoot="false" isLeaf="false" isAbstract="false" isActive="false"/>
				<project author="Valued Customer" version="1.0" phase="1.0" created="2012-11-17 12:06:58" modified="2012-11-17 12:11:06" complexity="1" status="Proposed"/>
				<code gentype="Java"/>
				<style appearance="BackColor=16744576;BorderColor=-1;BorderWidth=1;FontColor=-1;VSwimLanes=1;HSwimLanes=1;BorderStyle=0;"/>
				<modelDocument/>
				<tags/>
				<xrefs value="$XREFPROP=$XID={A9A55EFE-CE76-44df-BB48-6E6959C85E31}$XID;$NAM=CustomProperties$NAM;$TYP=element property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isActive@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={CEF9C3D7-F0C2-482e-B16B-A3CC89B10464}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
				<extendedProperties tagged="0" package_name="Class Model"/>
				<links>
					<Generalization xmi:id="EAID_14CB2FEB_3D57_41cf_91E5_0FB13B6F6CE4" start="EAID_CEF9C3D7_F0C2_482e_B16B_A3CC89B10464" end="EAID_3162AFD6_616D_4336_AE4C_34EB9D1B3488"/>
				</links>
			</element>
			<element xmi:idref="EAID_7167D0FA_2389_46f5_9449_43C1F9F12354" xmi:type="uml:Boundary" name="Maquina de Permisos" scope="public">
				<model package="EAPK_251C3D9E_572F_489f_A441_FE800ED72348" tpos="0" ea_localid="89" ea_eleType="element"/>
				<properties isSpecification="false" sType="Boundary" nType="0" scope="public"/>
				<project author="Valued Customer" version="1.0" phase="1.0" created="2013-06-22 13:40:04" modified="2013-06-22 13:42:19" complexity="1" status="Proposed"/>
				<code gentype="&lt;none&gt;"/>
				<style appearance="BackColor=12632256;BorderColor=-1;BorderWidth=1;FontColor=-1;VSwimLanes=0;HSwimLanes=0;BorderStyle=2;"/>
				<modelDocument/>
				<tags/>
				<xrefs/>
				<extendedProperties tagged="0" package_name="Class Model"/>
			</element>
			<element xmi:idref="EAID_7984C344_5848_452e_B012_4DB9066DD487" xmi:type="uml:Note" scope="public">
				<model package="EAPK_251C3D9E_572F_489f_A441_FE800ED72348" tpos="0" ea_localid="127" ea_eleType="element"/>
				<properties documentation="&lt;b&gt;&lt;u&gt;Proceso Notificaciones&lt;/u&gt;&lt;/b&gt;" isSpecification="false" sType="Note" nType="0" scope="public"/>
				<project author="bruno.buzzi" version="1.0" phase="1.0" created="2013-07-05 11:08:47" modified="2013-07-05 11:09:01" complexity="1" status="Proposed"/>
				<code gentype="&lt;none&gt;"/>
				<style appearance="BackColor=-1;BorderColor=-1;BorderWidth=-1;FontColor=-1;VSwimLanes=1;HSwimLanes=1;BorderStyle=0;"/>
				<modelDocument/>
				<tags/>
				<xrefs/>
				<extendedProperties tagged="0" package_name="Class Model"/>
			</element>
			<element xmi:idref="EAID_A8C29E4A_1C95_4866_8B51_7893E2A0FB8D" xmi:type="uml:Boundary" name="Maquina de Estados" scope="public">
				<model package="EAPK_251C3D9E_572F_489f_A441_FE800ED72348" tpos="0" ea_localid="86" ea_eleType="element"/>
				<properties isSpecification="false" sType="Boundary" nType="0" scope="public"/>
				<project author="Valued Customer" version="1.0" phase="1.0" created="2013-06-22 13:05:19" modified="2013-06-22 13:06:30" complexity="1" status="Proposed"/>
				<code gentype="&lt;none&gt;"/>
				<style appearance="BackColor=12632256;BorderColor=-1;BorderWidth=1;FontColor=-1;VSwimLanes=0;HSwimLanes=0;BorderStyle=2;"/>
				<modelDocument/>
				<tags/>
				<xrefs/>
				<extendedProperties tagged="0" package_name="Class Model"/>
			</element>
			<element xmi:idref="EAID_F3421EFA_73DA_4666_A102_BDC5DE63DB87" xmi:type="uml:Note" scope="public">
				<model package="EAPK_251C3D9E_572F_489f_A441_FE800ED72348" tpos="0" ea_localid="90" ea_eleType="element"/>
				<properties documentation="Son &quot;Clases&quot;" isSpecification="false" sType="Note" nType="0" scope="public"/>
				<project author="Valued Customer" version="1.0" phase="1.0" created="2013-06-23 16:42:37" modified="2013-06-26 19:40:27" complexity="1" status="Proposed"/>
				<code gentype="&lt;none&gt;"/>
				<style appearance="BackColor=-1;BorderColor=-1;BorderWidth=-1;FontColor=-1;VSwimLanes=1;HSwimLanes=1;BorderStyle=0;"/>
				<modelDocument/>
				<tags/>
				<xrefs/>
				<extendedProperties tagged="0" package_name="Class Model"/>
				<links>
					<NoteLink xmi:id="EAID_309B3175_69C9_4aea_AAD2_56C20D8ABBB4" start="EAID_F3421EFA_73DA_4666_A102_BDC5DE63DB87" end="EAID_912BC6F8_FB18_4416_9432_1AD48775676D"/>
					<NoteLink xmi:id="EAID_47953BD6_4EC3_4564_B96A_4465D52B1871" start="EAID_F3421EFA_73DA_4666_A102_BDC5DE63DB87" end="EAID_FEB7F827_B053_4f45_B04C_FD5ABDACF252"/>
				</links>
			</element>
			<element xmi:idref="EAPK_F86D9D61_608D_458f_9315_BFBA0CC9DD79" xmi:type="uml:Package" name="System" scope="public">
				<model package2="EAID_F86D9D61_608D_458f_9315_BFBA0CC9DD79" package="EAPK_251C3D9E_572F_489f_A441_FE800ED72348" tpos="1" ea_localid="5" ea_eleType="package"/>
				<properties isSpecification="false" sType="Package" nType="0" scope="public"/>
				<project version="1.0" phase="1.0" created="2005-11-19 10:06:57" modified="2005-11-19 10:06:57" complexity="1" status="Proposed"/>
				<code gentype="Java"/>
				<style appearance="BackColor=-1;BorderColor=-1;BorderWidth=-1;FontColor=-1;VSwimLanes=1;HSwimLanes=1;BorderStyle=0;"/>
				<modelDocument/>
				<tags/>
				<xrefs/>
				<extendedProperties tagged="0" package_name="Class Model" eventflags="LNK=0999;"/>
				<packageproperties tpos="1"/>
				<paths/>
				<times created="2012-11-09 10:40:48" modified="2012-11-09 10:40:48" lastloaddate="2012-11-09 10:40:48" lastsavedate="2012-11-09 10:40:48"/>
				<flags iscontrolled="FALSE" isprotected="FALSE" batchsave="0" batchload="0" usedtd="FALSE" logxml="FALSE"/>
			</element>
			<element xmi:idref="EAID_0CF0FB50_FADE_4491_8573_F9E9813AFD48" xmi:type="uml:Interface" name="Interface1" scope="public">
				<model package="EAPK_F86D9D61_608D_458f_9315_BFBA0CC9DD79" tpos="0" ea_localid="20" ea_eleType="element"/>
				<properties isSpecification="false" sType="Interface" nType="0" scope="public" stereotype="interface" isRoot="false" isLeaf="false" isAbstract="true"/>
				<project version="1.0" phase="1.0" created="2006-01-05 13:35:12" modified="2006-01-05 13:35:12" complexity="1" status="Proposed"/>
				<code gentype="Java"/>
				<style appearance="BackColor=-1;BorderColor=-1;BorderWidth=-1;FontColor=-1;VSwimLanes=1;HSwimLanes=1;BorderStyle=0;"/>
				<modelDocument/>
				<tags/>
				<xrefs value="$XREFPROP=$XID={53FD4CBF-E489-471a-8BF2-4E6DEF1B63F7}$XID;$NAM=Stereotypes$NAM;$TYP=element property$TYP;$VIS=Public$VIS;$DES=@STEREO;Name=interface;GUID={415BBAB5-0568-4d3e-B03F-515E0422D83D};@ENDSTEREO;$DES;$CLT={0CF0FB50-FADE-4491-8573-F9E9813AFD48}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
				<extendedProperties tagged="0" package_name="System" eventflags="LNK=dd5b;"/>
			</element>
			<element xmi:idref="EAPK_D907E3C2_9A81_4fb4_96DC_A6CF5E58ACEF" xmi:type="uml:Package" name="Frameworks" scope="public">
				<model package2="EAID_D907E3C2_9A81_4fb4_96DC_A6CF5E58ACEF" package="EAPK_251C3D9E_572F_489f_A441_FE800ED72348" tpos="2" ea_localid="6" ea_eleType="package"/>
				<properties isSpecification="false" sType="Package" nType="0" scope="public"/>
				<project version="1.0" phase="1.0" created="2005-11-19 10:06:33" modified="2005-11-19 10:06:33" complexity="1" status="Proposed"/>
				<code gentype="Java"/>
				<style appearance="BackColor=-1;BorderColor=-1;BorderWidth=-1;FontColor=-1;VSwimLanes=1;HSwimLanes=1;BorderStyle=0;"/>
				<modelDocument/>
				<tags/>
				<xrefs/>
				<extendedProperties tagged="0" package_name="Class Model" eventflags="LNK=14c9;"/>
				<packageproperties tpos="2"/>
				<paths/>
				<times created="2012-11-09 10:40:48" modified="2012-11-09 10:40:48" lastloaddate="2012-11-09 10:40:48" lastsavedate="2012-11-09 10:40:48"/>
				<flags iscontrolled="FALSE" isprotected="FALSE" batchsave="0" batchload="0" usedtd="FALSE" logxml="FALSE"/>
			</element>
			<element xmi:idref="EAID_42F3F5C6_28DB_44ea_AA87_909CA2AEE59D" xmi:type="uml:Note" name="Note" scope="public">
				<model package="EAPK_D907E3C2_9A81_4fb4_96DC_A6CF5E58ACEF" tpos="0" ea_localid="21" ea_eleType="element" name="Note"/>
				<properties isSpecification="false" sType="Note" nType="0" scope="public"/>
				<project version="1.0" phase="1.0" created="2006-01-05 13:35:43" modified="2006-01-05 13:35:43" complexity="1" status="Proposed"/>
				<code gentype="&lt;none&gt;"/>
				<style appearance="BackColor=-1;BorderColor=-1;BorderWidth=-1;FontColor=-1;VSwimLanes=1;HSwimLanes=1;BorderStyle=0;"/>
				<modelDocument/>
				<tags/>
				<xrefs/>
				<extendedProperties tagged="0" package_name="Frameworks"/>
			</element>
		</elements>
		<connectors>
			<connector xmi:idref="EAID_DA59AAB4_104A_4c67_AB6B_95FDD7984FE4">
				<source xmi:idref="EAID_1AE2FF85_8FF1_4143_8284_91850224D198">
					<model ea_localid="240" type="State" name="Actualizado"/>
					<role visibility="Public" targetScope="instance"/>
					<type aggregation="none" containment="Unspecified"/>
					<constraints/>
					<modifiers isOrdered="false" changeable="none" isNavigable="false"/>
					<style value="Union=0;Derived=0;AllowDuplicates=0;"/>
					<documentation/>
					<xrefs/>
					<tags/>
				</source>
				<target xmi:idref="EAID_FB3D8A23_8FA3_454f_BBF4_4A2D142C12D5">
					<model ea_localid="231" type="State" name="Enviado"/>
					<role visibility="Public" targetScope="instance"/>
					<type aggregation="none" containment="Unspecified"/>
					<constraints/>
					<modifiers isOrdered="false" changeable="none" isNavigable="true"/>
					<style value="Union=0;Derived=0;AllowDuplicates=0;"/>
					<documentation/>
					<xrefs/>
					<tags/>
				</target>
				<model ea_localid="277"/>
				<properties ea_type="StateFlow" direction="Source -&gt; Destination"/>
				<documentation/>
				<appearance linemode="3" linecolor="-1" linewidth="1" seqno="0" headStyle="0" lineStyle="0"/>
				<labels mt="enviarActualizado"/>
				<extendedProperties virtualInheritance="0"/>
				<style/>
				<xrefs value="$XREFPROP=$XID={538754E8-4F7B-451a-B298-3EE8EFEEAD6E}$XID;$NAM=CustomProperties$NAM;$TYP=connector property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isEffect@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=0@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=kind@ENDNAME;@TYPE=TransitionKind@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={DA59AAB4-104A-4c67-AB6B-95FDD7984FE4}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
				<tags/>
			</connector>
			<connector xmi:idref="EAID_0FDFE708_788A_4682_BA84_0DD32DF1B817">
				<source xmi:idref="EAID_972E8417_3864_40a0_89D4_672213108D9C">
					<model ea_localid="232" type="State" name="Aprobado"/>
					<role visibility="Public" targetScope="instance"/>
					<type aggregation="none" containment="Unspecified"/>
					<constraints/>
					<modifiers isOrdered="false" changeable="none" isNavigable="false"/>
					<style value="Union=0;Derived=0;AllowDuplicates=0;"/>
					<documentation/>
					<xrefs/>
					<tags/>
				</source>
				<target xmi:idref="EAID_1AE2FF85_8FF1_4143_8284_91850224D198">
					<model ea_localid="240" type="State" name="Actualizado"/>
					<role visibility="Public" targetScope="instance"/>
					<type aggregation="none" containment="Unspecified"/>
					<constraints/>
					<modifiers isOrdered="false" changeable="none" isNavigable="true"/>
					<style value="Union=0;Derived=0;AllowDuplicates=0;"/>
					<documentation/>
					<xrefs/>
					<tags/>
				</target>
				<model ea_localid="276"/>
				<properties ea_type="StateFlow" direction="Source -&gt; Destination"/>
				<documentation/>
				<appearance linemode="3" linecolor="-1" linewidth="1" seqno="0" headStyle="0" lineStyle="0"/>
				<labels mt="actualizarAprobado"/>
				<extendedProperties virtualInheritance="0"/>
				<style/>
				<xrefs value="$XREFPROP=$XID={413B08A6-A750-4fab-BA99-08E4DD266740}$XID;$NAM=CustomProperties$NAM;$TYP=connector property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isEffect@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=0@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=kind@ENDNAME;@TYPE=TransitionKind@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={0FDFE708-788A-4682-BA84-0DD32DF1B817}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
				<tags/>
			</connector>
			<connector xmi:idref="EAID_2D1D3EDF_CBE7_4c77_AF90_162E8F262A8A">
				<source xmi:idref="EAID_D827D872_BC80_471d_A2EC_1EB9D0E0138F">
					<model ea_localid="235" type="State" name="PendienteAclaracion"/>
					<role visibility="Public" targetScope="instance"/>
					<type aggregation="none" containment="Unspecified"/>
					<constraints/>
					<modifiers isOrdered="false" changeable="none" isNavigable="false"/>
					<style value="Union=0;Derived=0;AllowDuplicates=0;"/>
					<documentation/>
					<xrefs/>
					<tags/>
				</source>
				<target xmi:idref="EAID_1AE2FF85_8FF1_4143_8284_91850224D198">
					<model ea_localid="240" type="State" name="Actualizado"/>
					<role visibility="Public" targetScope="instance"/>
					<type aggregation="none" containment="Unspecified"/>
					<constraints/>
					<modifiers isOrdered="false" changeable="none" isNavigable="true"/>
					<style value="Union=0;Derived=0;AllowDuplicates=0;"/>
					<documentation/>
					<xrefs/>
					<tags/>
				</target>
				<model ea_localid="271"/>
				<properties ea_type="StateFlow" direction="Source -&gt; Destination"/>
				<documentation/>
				<appearance linemode="3" linecolor="-1" linewidth="1" seqno="0" headStyle="0" lineStyle="0"/>
				<labels mt="actualizarPendiente"/>
				<extendedProperties virtualInheritance="0"/>
				<style/>
				<xrefs value="$XREFPROP=$XID={524F84B1-47A9-481e-AD8A-C700A75283B1}$XID;$NAM=CustomProperties$NAM;$TYP=connector property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isEffect@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=0@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=kind@ENDNAME;@TYPE=TransitionKind@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={2D1D3EDF-CBE7-4c77-AF90-162E8F262A8A}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
				<tags/>
			</connector>
			<connector xmi:idref="EAID_E9B47ACC_759A_47a7_A639_A35A3738F6A8">
				<source xmi:idref="EAID_7657442C_DE12_4088_8D5A_07ED97EAFA3A">
					<model ea_localid="239" type="State" name="Vencido"/>
					<role visibility="Public" targetScope="instance"/>
					<type aggregation="none" containment="Unspecified"/>
					<constraints/>
					<modifiers isOrdered="false" changeable="none" isNavigable="false"/>
					<style value="Union=0;Derived=0;AllowDuplicates=0;"/>
					<documentation/>
					<xrefs/>
					<tags/>
				</source>
				<target xmi:idref="EAID_1AE2FF85_8FF1_4143_8284_91850224D198">
					<model ea_localid="240" type="State" name="Actualizado"/>
					<role visibility="Public" targetScope="instance"/>
					<type aggregation="none" containment="Unspecified"/>
					<constraints/>
					<modifiers isOrdered="false" changeable="none" isNavigable="true"/>
					<style value="Union=0;Derived=0;AllowDuplicates=0;"/>
					<documentation/>
					<xrefs/>
					<tags/>
				</target>
				<model ea_localid="272"/>
				<properties ea_type="StateFlow" direction="Source -&gt; Destination"/>
				<documentation/>
				<appearance linemode="3" linecolor="-1" linewidth="1" seqno="0" headStyle="0" lineStyle="0"/>
				<labels mt="actualizarVencido"/>
				<extendedProperties virtualInheritance="0"/>
				<style/>
				<xrefs value="$XREFPROP=$XID={976F4876-F667-410c-8B85-7D98750E76B7}$XID;$NAM=CustomProperties$NAM;$TYP=connector property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isEffect@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=0@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=kind@ENDNAME;@TYPE=TransitionKind@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={E9B47ACC-759A-47a7-A639-A35A3738F6A8}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
				<tags/>
			</connector>
			<connector xmi:idref="EAID_59238AC5_943A_4ff5_8DF3_89BDC747DFA3">
				<source xmi:idref="EAID_972E8417_3864_40a0_89D4_672213108D9C">
					<model ea_localid="232" type="State" name="Aprobado"/>
					<role visibility="Public" targetScope="instance"/>
					<type aggregation="none" containment="Unspecified"/>
					<constraints/>
					<modifiers isOrdered="false" changeable="none" isNavigable="false"/>
					<style value="Union=0;Derived=0;AllowDuplicates=0;"/>
					<documentation/>
					<xrefs/>
					<tags/>
				</source>
				<target xmi:idref="EAID_70891F23_E1FA_45d0_8AD6_46B7EE097BC9">
					<model ea_localid="237" type="State" name="Archivado"/>
					<role visibility="Public" targetScope="instance"/>
					<type aggregation="none" containment="Unspecified"/>
					<constraints/>
					<modifiers isOrdered="false" changeable="none" isNavigable="true"/>
					<style value="Union=0;Derived=0;AllowDuplicates=0;"/>
					<documentation/>
					<xrefs/>
					<tags/>
				</target>
				<model ea_localid="274"/>
				<properties ea_type="StateFlow" direction="Source -&gt; Destination"/>
				<documentation/>
				<appearance linemode="3" linecolor="-1" linewidth="1" seqno="0" headStyle="0" lineStyle="0"/>
				<labels mt="archivarAprobado"/>
				<extendedProperties virtualInheritance="0"/>
				<style/>
				<xrefs value="$XREFPROP=$XID={3E3160C3-7B05-4328-BBF9-19DE14B18F14}$XID;$NAM=CustomProperties$NAM;$TYP=connector property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isEffect@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=0@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=kind@ENDNAME;@TYPE=TransitionKind@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={59238AC5-943A-4ff5-8DF3-89BDC747DFA3}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
				<tags/>
			</connector>
			<connector xmi:idref="EAID_6EECE0B9_DF1F_4fe0_85C9_22A3ACDDFBEC">
				<source xmi:idref="EAID_D9C729D7_B811_4780_9213_0A6234D11014">
					<model ea_localid="234" type="State" name="EnRevision"/>
					<role visibility="Public" targetScope="instance"/>
					<type aggregation="none" containment="Unspecified"/>
					<constraints/>
					<modifiers isOrdered="false" changeable="none" isNavigable="false"/>
					<style value="Union=0;Derived=0;AllowDuplicates=0;"/>
					<documentation/>
					<xrefs/>
					<tags/>
				</source>
				<target xmi:idref="EAID_972E8417_3864_40a0_89D4_672213108D9C">
					<model ea_localid="232" type="State" name="Aprobado"/>
					<role visibility="Public" targetScope="instance"/>
					<type aggregation="none" containment="Unspecified"/>
					<constraints/>
					<modifiers isOrdered="false" changeable="none" isNavigable="true"/>
					<style value="Union=0;Derived=0;AllowDuplicates=0;"/>
					<documentation/>
					<xrefs/>
					<tags/>
				</target>
				<model ea_localid="268"/>
				<properties ea_type="StateFlow" direction="Source -&gt; Destination"/>
				<documentation/>
				<appearance linemode="3" linecolor="-1" linewidth="1" seqno="0" headStyle="0" lineStyle="0"/>
				<labels mt="aprobarRevision"/>
				<extendedProperties virtualInheritance="0"/>
				<style/>
				<xrefs value="$XREFPROP=$XID={3642911D-095D-493a-B6E5-4BD1F0D1E596}$XID;$NAM=CustomProperties$NAM;$TYP=connector property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isEffect@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=0@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=kind@ENDNAME;@TYPE=TransitionKind@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={6EECE0B9-DF1F-4fe0-85C9-22A3ACDDFBEC}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
				<tags/>
			</connector>
			<connector xmi:idref="EAID_8987C57A_1043_4e5b_B36F_4EF32B3442A6">
				<source xmi:idref="EAID_FB3D8A23_8FA3_454f_BBF4_4A2D142C12D5">
					<model ea_localid="231" type="State" name="Enviado"/>
					<role visibility="Public" targetScope="instance"/>
					<type aggregation="none" containment="Unspecified"/>
					<constraints/>
					<modifiers isOrdered="false" changeable="none" isNavigable="false"/>
					<style value="Union=0;Derived=0;AllowDuplicates=0;"/>
					<documentation/>
					<xrefs/>
					<tags/>
				</source>
				<target xmi:idref="EAID_972E8417_3864_40a0_89D4_672213108D9C">
					<model ea_localid="232" type="State" name="Aprobado"/>
					<role visibility="Public" targetScope="instance"/>
					<type aggregation="none" containment="Unspecified"/>
					<constraints/>
					<modifiers isOrdered="false" changeable="none" isNavigable="true"/>
					<style value="Union=0;Derived=0;AllowDuplicates=0;"/>
					<documentation/>
					<xrefs/>
					<tags/>
				</target>
				<model ea_localid="264"/>
				<properties ea_type="StateFlow" direction="Source -&gt; Destination"/>
				<documentation/>
				<appearance linemode="3" linecolor="-1" linewidth="1" seqno="0" headStyle="0" lineStyle="0"/>
				<labels mt="aprobarEnviado"/>
				<extendedProperties virtualInheritance="0"/>
				<style/>
				<xrefs value="$XREFPROP=$XID={4E1EB0EE-00BD-4e09-A552-83C9A510A7F0}$XID;$NAM=CustomProperties$NAM;$TYP=connector property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isEffect@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=0@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=kind@ENDNAME;@TYPE=TransitionKind@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={8987C57A-1043-4e5b-B36F-4EF32B3442A6}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
				<tags/>
			</connector>
			<connector xmi:idref="EAID_8A2E76C0_5FBB_471b_B660_B07EC00F7B7C">
				<source xmi:idref="EAID_70891F23_E1FA_45d0_8AD6_46B7EE097BC9">
					<model ea_localid="237" type="State" name="Archivado"/>
					<role visibility="Public" targetScope="instance"/>
					<type aggregation="none" containment="Unspecified"/>
					<constraints/>
					<modifiers isOrdered="false" changeable="none" isNavigable="false"/>
					<style value="Union=0;Derived=0;AllowDuplicates=0;"/>
					<documentation/>
					<xrefs/>
					<tags/>
				</source>
				<target xmi:idref="EAID_12FED14F_9189_40f8_862E_E043DB5DFBA7">
					<model ea_localid="238" type="StateNode" name="fin"/>
					<role visibility="Public" targetScope="instance"/>
					<type aggregation="none" containment="Unspecified"/>
					<constraints/>
					<modifiers isOrdered="false" changeable="none" isNavigable="true"/>
					<style value="Union=0;Derived=0;AllowDuplicates=0;"/>
					<documentation/>
					<xrefs/>
					<tags/>
				</target>
				<model ea_localid="278"/>
				<properties ea_type="StateFlow" direction="Source -&gt; Destination"/>
				<documentation/>
				<appearance linemode="3" linecolor="-1" linewidth="1" seqno="0" headStyle="0" lineStyle="0"/>
				<labels mt="finalizarArchivado"/>
				<extendedProperties virtualInheritance="0"/>
				<style/>
				<xrefs value="$XREFPROP=$XID={5C6DFAC4-8702-4ad6-A4C2-7286D6EFFC31}$XID;$NAM=CustomProperties$NAM;$TYP=connector property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isEffect@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=0@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=kind@ENDNAME;@TYPE=TransitionKind@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={8A2E76C0-5FBB-471b-B660-B07EC00F7B7C}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
				<tags/>
			</connector>
			<connector xmi:idref="EAID_0D7DF320_588B_4285_9CFC_B22BE9070196">
				<source xmi:idref="EAID_7657442C_DE12_4088_8D5A_07ED97EAFA3A">
					<model ea_localid="239" type="State" name="Vencido"/>
					<role visibility="Public" targetScope="instance"/>
					<type aggregation="none" containment="Unspecified"/>
					<constraints/>
					<modifiers isOrdered="false" changeable="none" isNavigable="false"/>
					<style value="Union=0;Derived=0;AllowDuplicates=0;"/>
					<documentation/>
					<xrefs/>
					<tags/>
				</source>
				<target xmi:idref="EAID_70891F23_E1FA_45d0_8AD6_46B7EE097BC9">
					<model ea_localid="237" type="State" name="Archivado"/>
					<role visibility="Public" targetScope="instance"/>
					<type aggregation="none" containment="Unspecified"/>
					<constraints/>
					<modifiers isOrdered="false" changeable="none" isNavigable="true"/>
					<style value="Union=0;Derived=0;AllowDuplicates=0;"/>
					<documentation/>
					<xrefs/>
					<tags/>
				</target>
				<model ea_localid="273"/>
				<properties ea_type="StateFlow" direction="Source -&gt; Destination"/>
				<documentation/>
				<appearance linemode="3" linecolor="-1" linewidth="1" seqno="0" headStyle="0" lineStyle="0"/>
				<labels mt="archivarVencido"/>
				<extendedProperties virtualInheritance="0"/>
				<style/>
				<xrefs value="$XREFPROP=$XID={400A27DD-F95C-4ed4-B7FD-5B69C46300AF}$XID;$NAM=CustomProperties$NAM;$TYP=connector property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isEffect@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=0@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=kind@ENDNAME;@TYPE=TransitionKind@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={0D7DF320-588B-4285-9CFC-B22BE9070196}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
				<tags/>
			</connector>
			<connector xmi:idref="EAID_7BA0C9B1_5756_4307_B516_5DC08F64B959">
				<source xmi:idref="EAID_78010233_2D3A_4cfe_A022_B20739EB3AF3">
					<model ea_localid="236" type="State" name="Rechazado"/>
					<role visibility="Public" targetScope="instance"/>
					<type aggregation="none" containment="Unspecified"/>
					<constraints/>
					<modifiers isOrdered="false" changeable="none" isNavigable="false"/>
					<style value="Union=0;Derived=0;AllowDuplicates=0;"/>
					<documentation/>
					<xrefs/>
					<tags/>
				</source>
				<target xmi:idref="EAID_70891F23_E1FA_45d0_8AD6_46B7EE097BC9">
					<model ea_localid="237" type="State" name="Archivado"/>
					<role visibility="Public" targetScope="instance"/>
					<type aggregation="none" containment="Unspecified"/>
					<constraints/>
					<modifiers isOrdered="false" changeable="none" isNavigable="true"/>
					<style value="Union=0;Derived=0;AllowDuplicates=0;"/>
					<documentation/>
					<xrefs/>
					<tags/>
				</target>
				<model ea_localid="275"/>
				<properties ea_type="StateFlow" direction="Source -&gt; Destination"/>
				<documentation/>
				<appearance linemode="3" linecolor="-1" linewidth="1" seqno="0" headStyle="0" lineStyle="0"/>
				<labels mt="archivarRechazado"/>
				<extendedProperties virtualInheritance="0"/>
				<style/>
				<xrefs value="$XREFPROP=$XID={988CC279-C38A-4e74-89BE-D05A6CB556B6}$XID;$NAM=CustomProperties$NAM;$TYP=connector property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isEffect@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=0@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=kind@ENDNAME;@TYPE=TransitionKind@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={7BA0C9B1-5756-4307-B516-5DC08F64B959}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
				<tags/>
			</connector>
			<connector xmi:idref="EAID_C721A870_8233_408f_A655_7404C190AF29">
				<source xmi:idref="EAID_981FFBFC_C5C7_4c71_AA33_38DFE2C83CA2">
					<model ea_localid="230" type="State" name="Borrador"/>
					<role visibility="Public" targetScope="instance"/>
					<type aggregation="none" containment="Unspecified"/>
					<constraints/>
					<modifiers isOrdered="false" changeable="none" isNavigable="false"/>
					<style value="Union=0;Derived=0;AllowDuplicates=0;"/>
					<documentation/>
					<xrefs/>
					<tags/>
				</source>
				<target xmi:idref="EAID_FB3D8A23_8FA3_454f_BBF4_4A2D142C12D5">
					<model ea_localid="231" type="State" name="Enviado"/>
					<role visibility="Public" targetScope="instance"/>
					<type aggregation="none" containment="Unspecified"/>
					<constraints/>
					<modifiers isOrdered="false" changeable="none" isNavigable="true"/>
					<style value="Union=0;Derived=0;AllowDuplicates=0;"/>
					<documentation/>
					<xrefs/>
					<tags/>
				</target>
				<model ea_localid="279"/>
				<properties ea_type="StateFlow" direction="Source -&gt; Destination"/>
				<documentation/>
				<appearance linemode="3" linecolor="-1" linewidth="1" seqno="0" headStyle="0" lineStyle="0"/>
				<labels mt="enviarBorrador"/>
				<extendedProperties virtualInheritance="0"/>
				<style/>
				<xrefs value="$XREFPROP=$XID={9826CD60-E6EA-4b38-8194-7F8A6965B2C5}$XID;$NAM=CustomProperties$NAM;$TYP=connector property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isEffect@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=0@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=kind@ENDNAME;@TYPE=TransitionKind@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={C721A870-8233-408f-A655-7404C190AF29}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
				<tags/>
			</connector>
			<connector xmi:idref="EAID_BC6E9103_4C16_4489_94EC_A7FB9F442EB0">
				<source xmi:idref="EAID_E5D1BC6E_2870_4f87_9B74_2AF74422294E">
					<model ea_localid="229" type="StateNode" name="inicio"/>
					<role visibility="Public" targetScope="instance"/>
					<type aggregation="none" containment="Unspecified"/>
					<constraints/>
					<modifiers isOrdered="false" changeable="none" isNavigable="false"/>
					<style value="Union=0;Derived=0;AllowDuplicates=0;"/>
					<documentation/>
					<xrefs/>
					<tags/>
				</source>
				<target xmi:idref="EAID_981FFBFC_C5C7_4c71_AA33_38DFE2C83CA2">
					<model ea_localid="230" type="State" name="Borrador"/>
					<role visibility="Public" targetScope="instance"/>
					<type aggregation="none" containment="Unspecified"/>
					<constraints/>
					<modifiers isOrdered="false" changeable="none" isNavigable="true"/>
					<style value="Union=0;Derived=0;AllowDuplicates=0;"/>
					<documentation/>
					<xrefs/>
					<tags/>
				</target>
				<model ea_localid="262"/>
				<properties ea_type="StateFlow" direction="Source -&gt; Destination"/>
				<documentation/>
				<appearance linemode="3" linecolor="-1" linewidth="1" seqno="0" headStyle="0" lineStyle="0"/>
				<labels mt="crearBorrador"/>
				<extendedProperties virtualInheritance="0"/>
				<style/>
				<xrefs value="$XREFPROP=$XID={603080DD-2EB3-46f8-9388-458FA07BB861}$XID;$NAM=CustomProperties$NAM;$TYP=connector property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isEffect@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=0@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=kind@ENDNAME;@TYPE=TransitionKind@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={BC6E9103-4C16-4489-94EC-A7FB9F442EB0}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
				<tags/>
			</connector>
			<connector xmi:idref="EAID_860BD803_A662_4404_9C3F_6524CA44230E">
				<source xmi:idref="EAID_D9C729D7_B811_4780_9213_0A6234D11014">
					<model ea_localid="234" type="State" name="EnRevision"/>
					<role visibility="Public" targetScope="instance"/>
					<type aggregation="none" containment="Unspecified"/>
					<constraints/>
					<modifiers isOrdered="false" changeable="none" isNavigable="false"/>
					<style value="Union=0;Derived=0;AllowDuplicates=0;"/>
					<documentation/>
					<xrefs/>
					<tags/>
				</source>
				<target xmi:idref="EAID_D827D872_BC80_471d_A2EC_1EB9D0E0138F">
					<model ea_localid="235" type="State" name="PendienteAclaracion"/>
					<role visibility="Public" targetScope="instance"/>
					<type aggregation="none" containment="Unspecified"/>
					<constraints/>
					<modifiers isOrdered="false" changeable="none" isNavigable="true"/>
					<style value="Union=0;Derived=0;AllowDuplicates=0;"/>
					<documentation/>
					<xrefs/>
					<tags/>
				</target>
				<model ea_localid="269"/>
				<properties ea_type="StateFlow" direction="Source -&gt; Destination"/>
				<documentation/>
				<appearance linemode="3" linecolor="-1" linewidth="1" seqno="0" headStyle="0" lineStyle="0"/>
				<labels mt="pedirAclaracion"/>
				<extendedProperties virtualInheritance="0"/>
				<style/>
				<xrefs value="$XREFPROP=$XID={494BE63A-2EB6-4475-A098-DB2E44407F53}$XID;$NAM=CustomProperties$NAM;$TYP=connector property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isEffect@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=0@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=kind@ENDNAME;@TYPE=TransitionKind@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={860BD803-A662-4404-9C3F-6524CA44230E}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
				<tags/>
			</connector>
			<connector xmi:idref="EAID_BC69529B_2F21_4228_ABDE_5C52B6F6FD31">
				<source xmi:idref="EAID_D9C729D7_B811_4780_9213_0A6234D11014">
					<model ea_localid="234" type="State" name="EnRevision"/>
					<role visibility="Public" targetScope="instance"/>
					<type aggregation="none" containment="Unspecified"/>
					<constraints/>
					<modifiers isOrdered="false" changeable="none" isNavigable="false"/>
					<style value="Union=0;Derived=0;AllowDuplicates=0;"/>
					<documentation/>
					<xrefs/>
					<tags/>
				</source>
				<target xmi:idref="EAID_78010233_2D3A_4cfe_A022_B20739EB3AF3">
					<model ea_localid="236" type="State" name="Rechazado"/>
					<role visibility="Public" targetScope="instance"/>
					<type aggregation="none" containment="Unspecified"/>
					<constraints/>
					<modifiers isOrdered="false" changeable="none" isNavigable="true"/>
					<style value="Union=0;Derived=0;AllowDuplicates=0;"/>
					<documentation/>
					<xrefs/>
					<tags/>
				</target>
				<model ea_localid="267"/>
				<properties ea_type="StateFlow" direction="Source -&gt; Destination"/>
				<documentation/>
				<appearance linemode="3" linecolor="-1" linewidth="1" seqno="0" headStyle="0" lineStyle="0"/>
				<labels mt="rechazarRevision"/>
				<extendedProperties virtualInheritance="0"/>
				<style/>
				<xrefs value="$XREFPROP=$XID={374F4EFE-CAB9-4b38-8035-3D103D0BFBA4}$XID;$NAM=CustomProperties$NAM;$TYP=connector property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isEffect@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=0@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=kind@ENDNAME;@TYPE=TransitionKind@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={BC69529B-2F21-4228-ABDE-5C52B6F6FD31}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
				<tags/>
			</connector>
			<connector xmi:idref="EAID_44A9372D_7C5B_42bc_9F30_7D1051C353E9">
				<source xmi:idref="EAID_884F1105_1CFE_430a_AB72_8CAFF05AE218">
					<model ea_localid="233" type="State" name="PendienteRevision"/>
					<role visibility="Public" targetScope="instance"/>
					<type aggregation="none" containment="Unspecified"/>
					<constraints/>
					<modifiers isOrdered="false" changeable="none" isNavigable="false"/>
					<style value="Union=0;Derived=0;AllowDuplicates=0;"/>
					<documentation/>
					<xrefs/>
					<tags/>
				</source>
				<target xmi:idref="EAID_D9C729D7_B811_4780_9213_0A6234D11014">
					<model ea_localid="234" type="State" name="EnRevision"/>
					<role visibility="Public" targetScope="instance"/>
					<type aggregation="none" containment="Unspecified"/>
					<constraints/>
					<modifiers isOrdered="false" changeable="none" isNavigable="true"/>
					<style value="Union=0;Derived=0;AllowDuplicates=0;"/>
					<documentation/>
					<xrefs/>
					<tags/>
				</target>
				<model ea_localid="266"/>
				<properties ea_type="StateFlow" direction="Source -&gt; Destination"/>
				<documentation/>
				<appearance linemode="3" linecolor="-1" linewidth="1" seqno="0" headStyle="0" lineStyle="0"/>
				<labels mt="revisarPendiente"/>
				<extendedProperties virtualInheritance="0"/>
				<style/>
				<xrefs value="$XREFPROP=$XID={7AB714B9-E444-4417-A33E-205C186D7BE2}$XID;$NAM=CustomProperties$NAM;$TYP=connector property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isEffect@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=0@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=kind@ENDNAME;@TYPE=TransitionKind@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={44A9372D-7C5B-42bc-9F30-7D1051C353E9}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
				<tags/>
			</connector>
			<connector xmi:idref="EAID_CCFA1A8F_EAFF_4caf_B954_16F979052E28">
				<source xmi:idref="EAID_FB3D8A23_8FA3_454f_BBF4_4A2D142C12D5">
					<model ea_localid="231" type="State" name="Enviado"/>
					<role visibility="Public" targetScope="instance"/>
					<type aggregation="none" containment="Unspecified"/>
					<constraints/>
					<modifiers isOrdered="false" changeable="none" isNavigable="false"/>
					<style value="Union=0;Derived=0;AllowDuplicates=0;"/>
					<documentation/>
					<xrefs/>
					<tags/>
				</source>
				<target xmi:idref="EAID_884F1105_1CFE_430a_AB72_8CAFF05AE218">
					<model ea_localid="233" type="State" name="PendienteRevision"/>
					<role visibility="Public" targetScope="instance"/>
					<type aggregation="none" containment="Unspecified"/>
					<constraints/>
					<modifiers isOrdered="false" changeable="none" isNavigable="true"/>
					<style value="Union=0;Derived=0;AllowDuplicates=0;"/>
					<documentation/>
					<xrefs/>
					<tags/>
				</target>
				<model ea_localid="265"/>
				<properties ea_type="StateFlow" direction="Source -&gt; Destination"/>
				<documentation/>
				<appearance linemode="3" linecolor="-1" linewidth="1" seqno="0" headStyle="0" lineStyle="0"/>
				<labels mt="tomarParaRevision"/>
				<extendedProperties virtualInheritance="0"/>
				<style/>
				<xrefs value="$XREFPROP=$XID={1B17A048-9F1B-4ce7-A7CC-D9701A8AB19E}$XID;$NAM=CustomProperties$NAM;$TYP=connector property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isEffect@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=0@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=kind@ENDNAME;@TYPE=TransitionKind@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={CCFA1A8F-EAFF-4caf-B954-16F979052E28}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
				<tags/>
			</connector>
			<connector xmi:idref="EAID_9141B6A6_E897_402f_91D2_3161C93617D7">
				<source xmi:idref="EAID_D827D872_BC80_471d_A2EC_1EB9D0E0138F">
					<model ea_localid="235" type="State" name="PendienteAclaracion"/>
					<role visibility="Public" targetScope="instance"/>
					<type aggregation="none" containment="Unspecified"/>
					<constraints/>
					<modifiers isOrdered="false" changeable="none" isNavigable="false"/>
					<style value="Union=0;Derived=0;AllowDuplicates=0;"/>
					<documentation/>
					<xrefs/>
					<tags/>
				</source>
				<target xmi:idref="EAID_7657442C_DE12_4088_8D5A_07ED97EAFA3A">
					<model ea_localid="239" type="State" name="Vencido"/>
					<role visibility="Public" targetScope="instance"/>
					<type aggregation="none" containment="Unspecified"/>
					<constraints/>
					<modifiers isOrdered="false" changeable="none" isNavigable="true"/>
					<style value="Union=0;Derived=0;AllowDuplicates=0;"/>
					<documentation/>
					<xrefs/>
					<tags/>
				</target>
				<model ea_localid="270"/>
				<properties ea_type="StateFlow" direction="Source -&gt; Destination"/>
				<documentation/>
				<appearance linemode="3" linecolor="-1" linewidth="1" seqno="0" headStyle="0" lineStyle="0"/>
				<labels mt="vencerAclaracion"/>
				<extendedProperties virtualInheritance="0"/>
				<style/>
				<xrefs value="$XREFPROP=$XID={0D9E33C5-FAC0-4d65-9D86-9CD30B81A5C9}$XID;$NAM=CustomProperties$NAM;$TYP=connector property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isEffect@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=0@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=kind@ENDNAME;@TYPE=TransitionKind@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={9141B6A6-E897-402f-91D2-3161C93617D7}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
				<tags/>
			</connector>
			<connector xmi:idref="EAID_4C96D6ED_0BE9_4071_8333_7ABAC5CAF128">
				<source xmi:idref="EAID_BCF1D6BC_7ACD_4070_9C41_C233E19E2A28">
					<model ea_localid="187" type="Package" name="Frameworks"/>
					<role visibility="Public"/>
					<type aggregation="none"/>
					<constraints/>
					<modifiers isOrdered="false" isNavigable="false"/>
					<style/>
					<documentation/>
					<xrefs/>
					<tags/>
				</source>
				<target xmi:idref="EAID_7C422CBA_2B31_4ac0_AC25_953CDEACEBCC">
					<model ea_localid="178" type="Note"/>
					<role visibility="Public"/>
					<type aggregation="none"/>
					<constraints/>
					<modifiers isOrdered="false" isNavigable="false"/>
					<style/>
					<documentation/>
					<xrefs/>
					<tags/>
				</target>
				<model ea_localid="170"/>
				<properties ea_type="NoteLink" direction="Source -&gt; Destination"/>
				<modifiers isRoot="false" isLeaf="false"/>
				<documentation/>
				<appearance linemode="3" linecolor="0" linewidth="0" seqno="0" headStyle="0" lineStyle="0"/>
				<labels/>
				<extendedProperties/>
				<style/>
				<xrefs/>
				<tags/>
			</connector>
			<connector xmi:idref="EAID_06BF65C8_48BD_4ff2_9008_3CCFA1BF3B07">
				<source xmi:idref="EAID_7F384018_442B_4192_83E2_D6362D07772D">
					<model ea_localid="182" type="Package" name="System"/>
					<role visibility="Public"/>
					<type aggregation="none"/>
					<constraints/>
					<modifiers isOrdered="false" isNavigable="false"/>
					<style/>
					<documentation/>
					<xrefs/>
					<tags/>
				</source>
				<target xmi:idref="EAID_C6A1CB6A_E7F2_4c9d_8283_0B54C088C11A">
					<model ea_localid="177" type="Note"/>
					<role visibility="Public"/>
					<type aggregation="none"/>
					<constraints/>
					<modifiers isOrdered="false" isNavigable="false"/>
					<style/>
					<documentation/>
					<xrefs/>
					<tags/>
				</target>
				<model ea_localid="169"/>
				<properties ea_type="NoteLink" direction="Source -&gt; Destination"/>
				<modifiers isRoot="false" isLeaf="false"/>
				<documentation/>
				<appearance linemode="3" linecolor="0" linewidth="0" seqno="0" headStyle="0" lineStyle="0"/>
				<labels/>
				<extendedProperties/>
				<style/>
				<xrefs/>
				<tags/>
			</connector>
			<connector xmi:idref="EAID_9B5A4EF9_D429_4825_8D1D_169C46B7DE57">
				<source xmi:idref="EAID_7B8740F5_412B_4150_91DF_8C3A06A3C5FB">
					<model ea_localid="228" type="Class" name="Seccion"/>
					<role visibility="Public" targetScope="instance"/>
					<type multiplicity="1" aggregation="none" containment="Unspecified"/>
					<constraints/>
					<modifiers isOrdered="false" changeable="none" isNavigable="false"/>
					<style value="Union=0;Derived=0;AllowDuplicates=0;Owned=0;Navigable=Unspecified;"/>
					<documentation/>
					<xrefs value="$XREFPROP=$XID={6411A129-F9FC-4eb0-87A3-FF6AD47A5567}$XID;$NAM=CustomProperties$NAM;$TYP=connectorSrcEnd property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isDerivedUnion@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isDerived@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=default@ENDNAME;@TYPE=String@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isReadOnly@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isComposite@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=aggregation@ENDNAME;@TYPE=AggregationKind@ENDTYPE;@VALU=none@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={9B5A4EF9-D429-4825-8D1D-169C46B7DE57}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
					<tags/>
				</source>
				<target xmi:idref="EAID_E0F984DE_07AC_408f_AC07_AD83323C322D">
					<model ea_localid="227" type="Class" name="Campo"/>
					<role visibility="Public" targetScope="instance"/>
					<type multiplicity="*" aggregation="none" containment="Unspecified"/>
					<constraints/>
					<modifiers isOrdered="false" changeable="none" isNavigable="true"/>
					<style value="Union=0;Derived=0;AllowDuplicates=0;Owned=0;Navigable=Unspecified;"/>
					<documentation/>
					<xrefs value="$XREFPROP=$XID={84EBBFB7-1A5D-4a0e-82EA-88AF1A598739}$XID;$NAM=CustomProperties$NAM;$TYP=connectorDestEnd property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isDerivedUnion@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isDerived@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=default@ENDNAME;@TYPE=String@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isReadOnly@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isComposite@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=aggregation@ENDNAME;@TYPE=AggregationKind@ENDTYPE;@VALU=none@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={9B5A4EF9-D429-4825-8D1D-169C46B7DE57}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
					<tags/>
				</target>
				<model ea_localid="261"/>
				<properties ea_type="Association" direction="Unspecified"/>
				<modifiers isRoot="false" isLeaf="false"/>
				<documentation/>
				<appearance linemode="3" linecolor="-1" linewidth="1" seqno="0" headStyle="0" lineStyle="0"/>
				<labels lb="1" rb="*"/>
				<extendedProperties virtualInheritance="0"/>
				<style/>
				<xrefs value="$XREFPROP=$XID={B4A022A6-4A5F-4edc-8F83-B7818F0838F4}$XID;$NAM=CustomProperties$NAM;$TYP=connector property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isDerived@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={9B5A4EF9-D429-4825-8D1D-169C46B7DE57}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
				<tags/>
			</connector>
			<connector xmi:idref="EAID_44FC0EC0_3ECE_4fa5_A59A_42410D2E9CA6">
				<source xmi:idref="EAID_DB6D4F90_8A74_4253_A05F_15E389F9E7BF">
					<model ea_localid="219" type="Class" name="Registro"/>
					<role visibility="Public" targetScope="instance"/>
					<type multiplicity="*" aggregation="none" containment="Unspecified"/>
					<constraints/>
					<modifiers isOrdered="false" changeable="none" isNavigable="false"/>
					<style value="Union=0;Derived=0;AllowDuplicates=0;Owned=0;Navigable=Unspecified;"/>
					<documentation/>
					<xrefs value="$XREFPROP=$XID={BA4A640F-4F83-4570-8696-EC07C3C42206}$XID;$NAM=CustomProperties$NAM;$TYP=connectorSrcEnd property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isDerivedUnion@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isDerived@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=default@ENDNAME;@TYPE=String@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isReadOnly@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isComposite@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=aggregation@ENDNAME;@TYPE=AggregationKind@ENDTYPE;@VALU=none@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={44FC0EC0-3ECE-4fa5-A59A-42410D2E9CA6}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
					<tags/>
				</source>
				<target xmi:idref="EAID_936272D8_AEEF_4b92_B5F6_55FD046C216C">
					<model ea_localid="222" type="Class" name="Categoria"/>
					<role visibility="Public" targetScope="instance"/>
					<type multiplicity="*" aggregation="none" containment="Unspecified"/>
					<constraints/>
					<modifiers isOrdered="false" changeable="none" isNavigable="true"/>
					<style value="Union=0;Derived=0;AllowDuplicates=0;Owned=0;Navigable=Unspecified;"/>
					<documentation/>
					<xrefs value="$XREFPROP=$XID={18044243-9C5D-4e58-A982-98397CF719A4}$XID;$NAM=CustomProperties$NAM;$TYP=connectorDestEnd property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isDerivedUnion@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isDerived@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=default@ENDNAME;@TYPE=String@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isReadOnly@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isComposite@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=aggregation@ENDNAME;@TYPE=AggregationKind@ENDTYPE;@VALU=none@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={44FC0EC0-3ECE-4fa5-A59A-42410D2E9CA6}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
					<tags/>
				</target>
				<model ea_localid="253"/>
				<properties ea_type="Association" direction="Unspecified"/>
				<modifiers isRoot="false" isLeaf="false"/>
				<documentation/>
				<appearance linemode="3" linecolor="-1" linewidth="1" seqno="0" headStyle="0" lineStyle="0"/>
				<labels lb="*" rb="*"/>
				<extendedProperties virtualInheritance="0"/>
				<style/>
				<xrefs value="$XREFPROP=$XID={973A4BBE-23A3-42d6-847F-0881DA41BF01}$XID;$NAM=CustomProperties$NAM;$TYP=connector property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isDerived@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={44FC0EC0-3ECE-4fa5-A59A-42410D2E9CA6}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
				<tags/>
			</connector>
			<connector xmi:idref="EAID_6E8E542A_6A3D_44fd_A414_02AC36303C2A">
				<source xmi:idref="EAID_38C8A964_D4EB_4cd2_A707_757CDE9EC9EC">
					<model ea_localid="107" type="Class" name="DefinicionMaquinaEstado"/>
					<role visibility="Public" targetScope="instance"/>
					<type aggregation="none" containment="Unspecified"/>
					<constraints/>
					<modifiers isOrdered="false" changeable="none" isNavigable="false"/>
					<style value="Union=0;Derived=0;AllowDuplicates=0;Owned=0;Navigable=Unspecified;"/>
					<documentation/>
					<xrefs value="$XREFPROP=$XID={50610E34-52FF-450c-9AC3-56F78F984448}$XID;$NAM=CustomProperties$NAM;$TYP=connectorSrcEnd property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isDerivedUnion@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isDerived@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=default@ENDNAME;@TYPE=String@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isReadOnly@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isComposite@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=aggregation@ENDNAME;@TYPE=AggregationKind@ENDTYPE;@VALU=none@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={6E8E542A-6A3D-44fd-A414-02AC36303C2A}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
					<tags/>
				</source>
				<target xmi:idref="EAID_FEB7F827_B053_4f45_B04C_FD5ABDACF252">
					<model ea_localid="64" type="Class" name="DefinicionTransicion"/>
					<role visibility="Public" targetScope="instance"/>
					<type multiplicity="*" aggregation="none" containment="Unspecified"/>
					<constraints/>
					<modifiers isOrdered="false" changeable="none" isNavigable="true"/>
					<style value="Union=0;Derived=0;AllowDuplicates=0;Owned=0;Navigable=Navigable;"/>
					<documentation/>
					<xrefs value="$XREFPROP=$XID={E58DF96E-45E6-47b2-8F89-7D97E1536788}$XID;$NAM=CustomProperties$NAM;$TYP=connectorDestEnd property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isDerivedUnion@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isDerived@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=default@ENDNAME;@TYPE=String@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isReadOnly@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isComposite@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=aggregation@ENDNAME;@TYPE=AggregationKind@ENDTYPE;@VALU=none@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={6E8E542A-6A3D-44fd-A414-02AC36303C2A}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
					<tags/>
				</target>
				<model ea_localid="126"/>
				<properties ea_type="Association" direction="Source -&gt; Destination"/>
				<modifiers isRoot="false" isLeaf="false"/>
				<documentation/>
				<appearance linemode="3" linecolor="-1" linewidth="1" seqno="0" headStyle="0" lineStyle="0"/>
				<labels rb="*"/>
				<extendedProperties virtualInheritance="0"/>
				<style/>
				<xrefs value="$XREFPROP=$XID={CF1C4E5F-8C05-47fc-82E9-0123612CAE80}$XID;$NAM=CustomProperties$NAM;$TYP=connector property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isDerived@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={6E8E542A-6A3D-44fd-A414-02AC36303C2A}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
				<tags/>
			</connector>
			<connector xmi:idref="EAID_4B77B922_B452_4cfe_A7E4_EDADC5EB5EDF">
				<source xmi:idref="EAID_D177CECD_84CC_4aaf_990C_380C7A16A55B">
					<model ea_localid="108" type="Class" name="MaquinaEstado"/>
					<role visibility="Public" targetScope="instance"/>
					<type aggregation="none" containment="Unspecified"/>
					<constraints/>
					<modifiers isOrdered="false" changeable="none" isNavigable="false"/>
					<style value="Union=0;Derived=0;AllowDuplicates=0;Owned=0;Navigable=Unspecified;"/>
					<documentation/>
					<xrefs value="$XREFPROP=$XID={60ECD45D-8A60-4604-B8C1-9D5F2B586229}$XID;$NAM=CustomProperties$NAM;$TYP=connectorSrcEnd property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isDerivedUnion@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isDerived@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=default@ENDNAME;@TYPE=String@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isReadOnly@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isComposite@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=aggregation@ENDNAME;@TYPE=AggregationKind@ENDTYPE;@VALU=none@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={4B77B922-B452-4cfe-A7E4-EDADC5EB5EDF}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
					<tags/>
				</source>
				<target xmi:idref="EAID_38C8A964_D4EB_4cd2_A707_757CDE9EC9EC">
					<model ea_localid="107" type="Class" name="DefinicionMaquinaEstado"/>
					<role visibility="Public" targetScope="instance"/>
					<type multiplicity="1" aggregation="none" containment="Unspecified"/>
					<constraints/>
					<modifiers isOrdered="false" changeable="none" isNavigable="true"/>
					<style value="Union=0;Derived=0;AllowDuplicates=0;Owned=0;Navigable=Navigable;"/>
					<documentation/>
					<xrefs value="$XREFPROP=$XID={DFA2CA89-E6FF-4c66-A026-DA525819F3B3}$XID;$NAM=CustomProperties$NAM;$TYP=connectorDestEnd property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isDerivedUnion@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isDerived@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=default@ENDNAME;@TYPE=String@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isReadOnly@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isComposite@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=aggregation@ENDNAME;@TYPE=AggregationKind@ENDTYPE;@VALU=none@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={4B77B922-B452-4cfe-A7E4-EDADC5EB5EDF}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
					<tags/>
				</target>
				<model ea_localid="127"/>
				<properties ea_type="Association" direction="Source -&gt; Destination"/>
				<modifiers isRoot="false" isLeaf="false"/>
				<documentation/>
				<appearance linemode="3" linecolor="-1" linewidth="1" seqno="0" headStyle="0" lineStyle="0"/>
				<labels rb="1"/>
				<extendedProperties virtualInheritance="0"/>
				<style/>
				<xrefs value="$XREFPROP=$XID={0CB6812F-3B00-4219-9548-42150224023F}$XID;$NAM=CustomProperties$NAM;$TYP=connector property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isDerived@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={4B77B922-B452-4cfe-A7E4-EDADC5EB5EDF}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
				<tags/>
			</connector>
			<connector xmi:idref="EAID_0C2D7E9D_2E1A_4eaf_A206_17D849AAE750">
				<source xmi:idref="EAID_FEB7F827_B053_4f45_B04C_FD5ABDACF252">
					<model ea_localid="64" type="Class" name="DefinicionTransicion"/>
					<role visibility="Public" targetScope="instance"/>
					<type aggregation="none" containment="Unspecified"/>
					<constraints/>
					<modifiers isOrdered="false" changeable="none" isNavigable="false"/>
					<style value="Union=0;Derived=0;AllowDuplicates=0;Owned=0;Navigable=Unspecified;"/>
					<documentation/>
					<xrefs value="$XREFPROP=$XID={CD8FD3FC-0692-45bd-9D07-6188D0752B73}$XID;$NAM=CustomProperties$NAM;$TYP=connectorSrcEnd property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isDerivedUnion@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isDerived@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=default@ENDNAME;@TYPE=String@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isReadOnly@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isComposite@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=aggregation@ENDNAME;@TYPE=AggregationKind@ENDTYPE;@VALU=none@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={0C2D7E9D-2E1A-4eaf-A206-17D849AAE750}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
					<tags/>
				</source>
				<target xmi:idref="EAID_912BC6F8_FB18_4416_9432_1AD48775676D">
					<model ea_localid="55" type="Class" name="Estado"/>
					<role visibility="Public" targetScope="instance"/>
					<type multiplicity="1" aggregation="none" containment="Unspecified"/>
					<constraints/>
					<modifiers isOrdered="false" changeable="none" isNavigable="true"/>
					<style value="Union=0;Derived=0;AllowDuplicates=0;Owned=0;Navigable=Navigable;"/>
					<documentation/>
					<xrefs value="$XREFPROP=$XID={7123719A-A002-4a89-ABFA-0FD8E9F43C3D}$XID;$NAM=CustomProperties$NAM;$TYP=connectorDestEnd property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isDerivedUnion@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isDerived@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=default@ENDNAME;@TYPE=String@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isReadOnly@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isComposite@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=aggregation@ENDNAME;@TYPE=AggregationKind@ENDTYPE;@VALU=none@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={0C2D7E9D-2E1A-4eaf-A206-17D849AAE750}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
					<tags/>
				</target>
				<model ea_localid="72"/>
				<properties ea_type="Association" direction="Source -&gt; Destination"/>
				<modifiers isRoot="false" isLeaf="false"/>
				<documentation/>
				<appearance linemode="3" linecolor="-1" linewidth="1" seqno="0" headStyle="0" lineStyle="0"/>
				<labels mt="actual" rb="1"/>
				<extendedProperties virtualInheritance="0"/>
				<style/>
				<xrefs value="$XREFPROP=$XID={982DACBD-5DC9-493a-8174-E918785F58B9}$XID;$NAM=CustomProperties$NAM;$TYP=connector property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isDerived@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={0C2D7E9D-2E1A-4eaf-A206-17D849AAE750}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
				<tags/>
			</connector>
			<connector xmi:idref="EAID_3E1AE3AB_6C76_4ffb_A619_DDBCBFB6A6B0">
				<source xmi:idref="EAID_FEB7F827_B053_4f45_B04C_FD5ABDACF252">
					<model ea_localid="64" type="Class" name="DefinicionTransicion"/>
					<role visibility="Public" targetScope="instance"/>
					<type multiplicity="*" aggregation="none" containment="Unspecified"/>
					<constraints/>
					<modifiers isOrdered="false" changeable="none" isNavigable="false"/>
					<style value="Union=0;Derived=0;AllowDuplicates=0;Owned=0;Navigable=Unspecified;"/>
					<documentation/>
					<xrefs value="$XREFPROP=$XID={066B1681-A5D3-4cf2-96C4-63245D8DAAAF}$XID;$NAM=CustomProperties$NAM;$TYP=connectorSrcEnd property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isDerivedUnion@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isDerived@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=default@ENDNAME;@TYPE=String@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isReadOnly@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isComposite@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=aggregation@ENDNAME;@TYPE=AggregationKind@ENDTYPE;@VALU=none@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={3E1AE3AB-6C76-4ffb-A619-DDBCBFB6A6B0}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
					<tags/>
				</source>
				<target xmi:idref="EAID_D6358D5E_863D_44a7_96D9_9C3E91364044">
					<model ea_localid="65" type="Class" name="Rol"/>
					<role visibility="Public" targetScope="instance"/>
					<type multiplicity="*" aggregation="none" containment="Unspecified"/>
					<constraints/>
					<modifiers isOrdered="false" changeable="none" isNavigable="true"/>
					<style value="Union=0;Derived=0;AllowDuplicates=0;Owned=0;Navigable=Unspecified;"/>
					<documentation/>
					<xrefs value="$XREFPROP=$XID={E2068AF9-7440-4310-BC34-DBB6F183FCF2}$XID;$NAM=CustomProperties$NAM;$TYP=connectorDestEnd property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isDerivedUnion@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isDerived@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=default@ENDNAME;@TYPE=String@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isReadOnly@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isComposite@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=aggregation@ENDNAME;@TYPE=AggregationKind@ENDTYPE;@VALU=none@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={3E1AE3AB-6C76-4ffb-A619-DDBCBFB6A6B0}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
					<tags/>
				</target>
				<model ea_localid="61"/>
				<properties ea_type="Association" direction="Unspecified"/>
				<modifiers isRoot="false" isLeaf="false"/>
				<documentation/>
				<appearance linemode="3" linecolor="32896" linewidth="3" seqno="0" headStyle="0" lineStyle="0"/>
				<labels lb="*" mt="permisos a maquina de estados" rb="*"/>
				<extendedProperties virtualInheritance="0"/>
				<style/>
				<xrefs value="$XREFPROP=$XID={983E7848-7E09-4a1a-BE4E-1AD82B315229}$XID;$NAM=CustomProperties$NAM;$TYP=connector property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isDerived@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={3E1AE3AB-6C76-4ffb-A619-DDBCBFB6A6B0}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
				<tags/>
			</connector>
			<connector xmi:idref="EAID_6BBF6416_9370_4de1_A9F1_8618110BF8CC">
				<source xmi:idref="EAID_FEB7F827_B053_4f45_B04C_FD5ABDACF252">
					<model ea_localid="64" type="Class" name="DefinicionTransicion"/>
					<role visibility="Public" targetScope="instance"/>
					<type aggregation="none" containment="Unspecified"/>
					<constraints/>
					<modifiers isOrdered="false" changeable="none" isNavigable="false"/>
					<style value="Union=0;Derived=0;AllowDuplicates=0;Owned=0;Navigable=Unspecified;"/>
					<documentation/>
					<xrefs value="$XREFPROP=$XID={0DE7D987-5B94-4174-B908-BD9FC7B67262}$XID;$NAM=CustomProperties$NAM;$TYP=connectorSrcEnd property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isDerivedUnion@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isDerived@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=default@ENDNAME;@TYPE=String@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isReadOnly@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isComposite@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=aggregation@ENDNAME;@TYPE=AggregationKind@ENDTYPE;@VALU=none@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={6BBF6416-9370-4de1-A9F1-8618110BF8CC}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
					<tags/>
				</source>
				<target xmi:idref="EAID_912BC6F8_FB18_4416_9432_1AD48775676D">
					<model ea_localid="55" type="Class" name="Estado"/>
					<role visibility="Public" targetScope="instance"/>
					<type multiplicity="1" aggregation="none" containment="Unspecified"/>
					<constraints/>
					<modifiers isOrdered="false" changeable="none" isNavigable="true"/>
					<style value="Union=0;Derived=0;AllowDuplicates=0;Owned=0;Navigable=Navigable;"/>
					<documentation/>
					<xrefs value="$XREFPROP=$XID={212AD5CB-E209-4591-A681-FA041D671B75}$XID;$NAM=CustomProperties$NAM;$TYP=connectorDestEnd property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isDerivedUnion@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isDerived@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=default@ENDNAME;@TYPE=String@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isReadOnly@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isComposite@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=aggregation@ENDNAME;@TYPE=AggregationKind@ENDTYPE;@VALU=none@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={6BBF6416-9370-4de1-A9F1-8618110BF8CC}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
					<tags/>
				</target>
				<model ea_localid="71"/>
				<properties ea_type="Association" direction="Source -&gt; Destination"/>
				<modifiers isRoot="false" isLeaf="false"/>
				<documentation/>
				<appearance linemode="3" linecolor="-1" linewidth="1" seqno="0" headStyle="0" lineStyle="0"/>
				<labels mt="siguiente" rb="1"/>
				<extendedProperties virtualInheritance="0"/>
				<style/>
				<xrefs value="$XREFPROP=$XID={BAF30F39-0D95-44a2-B58B-F12FC3BD3132}$XID;$NAM=CustomProperties$NAM;$TYP=connector property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isDerived@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={6BBF6416-9370-4de1-A9F1-8618110BF8CC}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
				<tags/>
			</connector>
			<connector xmi:idref="EAID_47953BD6_4EC3_4564_B96A_4465D52B1871">
				<source xmi:idref="EAID_F3421EFA_73DA_4666_A102_BDC5DE63DB87">
					<model ea_localid="90" type="Note"/>
					<role visibility="Public" targetScope="instance"/>
					<type aggregation="none" containment="Unspecified"/>
					<constraints/>
					<modifiers isOrdered="false" changeable="none" isNavigable="false"/>
					<style value="Union=0;Derived=0;AllowDuplicates=0;"/>
					<documentation/>
					<xrefs/>
					<tags/>
				</source>
				<target xmi:idref="EAID_FEB7F827_B053_4f45_B04C_FD5ABDACF252">
					<model ea_localid="64" type="Class" name="DefinicionTransicion"/>
					<role visibility="Public" targetScope="instance"/>
					<type aggregation="none" containment="Unspecified"/>
					<constraints/>
					<modifiers isOrdered="false" changeable="none" isNavigable="true"/>
					<style value="Union=0;Derived=0;AllowDuplicates=0;"/>
					<documentation/>
					<xrefs/>
					<tags/>
				</target>
				<model ea_localid="95"/>
				<properties ea_type="NoteLink" direction="Source -&gt; Destination"/>
				<modifiers isRoot="false" isLeaf="false"/>
				<documentation/>
				<appearance linemode="3" linecolor="-1" linewidth="1" seqno="0" headStyle="0" lineStyle="0"/>
				<labels/>
				<extendedProperties virtualInheritance="0"/>
				<style/>
				<xrefs/>
				<tags/>
			</connector>
			<connector xmi:idref="EAID_96A42E29_350E_43ea_9445_328772D3D3C1">
				<source xmi:idref="EAID_BE145EF8_3054_4b41_ABF8_23A90BB5F4D2">
					<model ea_localid="66" type="Class" name="Transicion"/>
					<role visibility="Public" targetScope="instance"/>
					<type aggregation="none" containment="Unspecified"/>
					<constraints/>
					<modifiers isOrdered="false" changeable="none" isNavigable="false"/>
					<style value="Union=0;Derived=0;AllowDuplicates=0;Owned=0;Navigable=Unspecified;"/>
					<documentation/>
					<xrefs value="$XREFPROP=$XID={C4948EDD-F9ED-4d7d-B732-5818DB8C325D}$XID;$NAM=CustomProperties$NAM;$TYP=connectorSrcEnd property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isDerivedUnion@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isDerived@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=default@ENDNAME;@TYPE=String@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isReadOnly@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isComposite@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=aggregation@ENDNAME;@TYPE=AggregationKind@ENDTYPE;@VALU=none@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={96A42E29-350E-43ea-9445-328772D3D3C1}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
					<tags/>
				</source>
				<target xmi:idref="EAID_FEB7F827_B053_4f45_B04C_FD5ABDACF252">
					<model ea_localid="64" type="Class" name="DefinicionTransicion"/>
					<role visibility="Public" targetScope="instance"/>
					<type multiplicity="1" aggregation="none" containment="Unspecified"/>
					<constraints/>
					<modifiers isOrdered="false" changeable="none" isNavigable="true"/>
					<style value="Union=0;Derived=0;AllowDuplicates=0;Owned=0;Navigable=Navigable;"/>
					<documentation/>
					<xrefs value="$XREFPROP=$XID={F4D295EB-B1A3-4f21-8533-E715766C2CAF}$XID;$NAM=CustomProperties$NAM;$TYP=connectorDestEnd property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isDerivedUnion@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isDerived@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=default@ENDNAME;@TYPE=String@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isReadOnly@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isComposite@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=aggregation@ENDNAME;@TYPE=AggregationKind@ENDTYPE;@VALU=none@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={96A42E29-350E-43ea-9445-328772D3D3C1}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
					<tags/>
				</target>
				<model ea_localid="63"/>
				<properties ea_type="Association" direction="Source -&gt; Destination"/>
				<modifiers isRoot="false" isLeaf="false"/>
				<documentation/>
				<appearance linemode="3" linecolor="-1" linewidth="1" seqno="0" headStyle="0" lineStyle="0"/>
				<labels rb="1"/>
				<extendedProperties virtualInheritance="0"/>
				<style/>
				<xrefs value="$XREFPROP=$XID={36457992-3391-45b4-8115-CF90D59F0EA9}$XID;$NAM=CustomProperties$NAM;$TYP=connector property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isDerived@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={96A42E29-350E-43ea-9445-328772D3D3C1}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
				<tags/>
			</connector>
			<connector xmi:idref="EAID_3E93BDB2_46A2_4c2e_BECA_E598270EEBD1">
				<source xmi:idref="EAID_DB6D4F90_8A74_4253_A05F_15E389F9E7BF">
					<model ea_localid="219" type="Class" name="Registro"/>
					<role visibility="Public" targetScope="instance"/>
					<type aggregation="none" containment="Unspecified"/>
					<constraints/>
					<modifiers isOrdered="false" changeable="none" isNavigable="false"/>
					<style value="Union=0;Derived=0;AllowDuplicates=0;Owned=0;Navigable=Unspecified;"/>
					<documentation/>
					<xrefs value="$XREFPROP=$XID={EBBF5FCD-339C-487e-81C3-49D0D609751E}$XID;$NAM=CustomProperties$NAM;$TYP=connectorSrcEnd property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isDerivedUnion@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isDerived@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=default@ENDNAME;@TYPE=String@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isReadOnly@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isComposite@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=aggregation@ENDNAME;@TYPE=AggregationKind@ENDTYPE;@VALU=none@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={3E93BDB2-46A2-4c2e-BECA-E598270EEBD1}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
					<tags/>
				</source>
				<target xmi:idref="EAID_494A45F6_51BE_4989_9E35_69DB61EC1EB4">
					<model ea_localid="99" type="Class" name="Document"/>
					<role visibility="Public" targetScope="instance"/>
					<type multiplicity="*" aggregation="none" containment="Unspecified"/>
					<constraints/>
					<modifiers isOrdered="false" changeable="none" isNavigable="true"/>
					<style value="Union=0;Derived=0;AllowDuplicates=0;Owned=0;Navigable=Navigable;"/>
					<documentation/>
					<xrefs value="$XREFPROP=$XID={E30AD58D-9B0A-4385-AE0D-0F0146AC3322}$XID;$NAM=CustomProperties$NAM;$TYP=connectorDestEnd property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isDerivedUnion@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isDerived@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=default@ENDNAME;@TYPE=String@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isReadOnly@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isComposite@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=aggregation@ENDNAME;@TYPE=AggregationKind@ENDTYPE;@VALU=none@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={3E93BDB2-46A2-4c2e-BECA-E598270EEBD1}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
					<tags/>
				</target>
				<model ea_localid="248"/>
				<properties ea_type="Association" direction="Source -&gt; Destination"/>
				<modifiers isRoot="false" isLeaf="false"/>
				<documentation/>
				<appearance linemode="3" linecolor="-1" linewidth="1" seqno="0" headStyle="0" lineStyle="0"/>
				<labels rb="*"/>
				<extendedProperties virtualInheritance="0"/>
				<style/>
				<xrefs value="$XREFPROP=$XID={F80AE39C-BD8D-47a8-95E9-4E30C7AAC1E6}$XID;$NAM=CustomProperties$NAM;$TYP=connector property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isDerived@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={3E93BDB2-46A2-4c2e-BECA-E598270EEBD1}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
				<tags/>
			</connector>
			<connector xmi:idref="EAID_823DDB52_E6E6_40da_B66B_5841F3CA63D9">
				<source xmi:idref="EAID_BE145EF8_3054_4b41_ABF8_23A90BB5F4D2">
					<model ea_localid="66" type="Class" name="Transicion"/>
					<role visibility="Public" targetScope="instance"/>
					<type aggregation="none" containment="Unspecified"/>
					<constraints/>
					<modifiers isOrdered="false" changeable="none" isNavigable="false"/>
					<style value="Union=0;Derived=0;AllowDuplicates=0;Owned=0;Navigable=Unspecified;"/>
					<documentation/>
					<xrefs value="$XREFPROP=$XID={C4E85F87-4048-450f-A61E-B5D3A8D3EB3E}$XID;$NAM=CustomProperties$NAM;$TYP=connectorSrcEnd property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isDerivedUnion@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isDerived@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=default@ENDNAME;@TYPE=String@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isReadOnly@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isComposite@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=aggregation@ENDNAME;@TYPE=AggregationKind@ENDTYPE;@VALU=none@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={823DDB52-E6E6-40da-B66B-5841F3CA63D9}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
					<tags/>
				</source>
				<target xmi:idref="EAID_494A45F6_51BE_4989_9E35_69DB61EC1EB4">
					<model ea_localid="99" type="Class" name="Document"/>
					<role visibility="Public" targetScope="instance"/>
					<type multiplicity="*" aggregation="none" containment="Unspecified"/>
					<constraints/>
					<modifiers isOrdered="false" changeable="none" isNavigable="true"/>
					<style value="Union=0;Derived=0;AllowDuplicates=0;Owned=0;Navigable=Navigable;"/>
					<documentation/>
					<xrefs value="$XREFPROP=$XID={412A5AE9-B97D-41e1-941B-CEB86022A431}$XID;$NAM=CustomProperties$NAM;$TYP=connectorDestEnd property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isDerivedUnion@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isDerived@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=default@ENDNAME;@TYPE=String@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isReadOnly@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isComposite@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=aggregation@ENDNAME;@TYPE=AggregationKind@ENDTYPE;@VALU=none@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={823DDB52-E6E6-40da-B66B-5841F3CA63D9}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
					<tags/>
				</target>
				<model ea_localid="219"/>
				<properties ea_type="Association" direction="Source -&gt; Destination"/>
				<modifiers isRoot="false" isLeaf="false"/>
				<documentation/>
				<appearance linemode="3" linecolor="-1" linewidth="1" seqno="0" headStyle="0" lineStyle="0"/>
				<labels rb="*"/>
				<extendedProperties virtualInheritance="0"/>
				<style/>
				<xrefs value="$XREFPROP=$XID={45FD0682-F052-4c2f-8DFA-AE560014BB51}$XID;$NAM=CustomProperties$NAM;$TYP=connector property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isDerived@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={823DDB52-E6E6-40da-B66B-5841F3CA63D9}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
				<tags/>
			</connector>
			<connector xmi:idref="EAID_DE36CD73_D70E_41e2_90F5_F3E9C3CF0B62">
				<source xmi:idref="EAID_E6107410_9614_449a_8D2D_E93A9B5DF687">
					<model ea_localid="73" type="Class" name="Editar"/>
					<role visibility="Public" targetScope="instance"/>
					<type aggregation="none" containment="Unspecified"/>
					<constraints/>
					<modifiers isOrdered="false" changeable="none" isNavigable="false"/>
					<style value="Union=0;Derived=0;AllowDuplicates=0;"/>
					<documentation/>
					<xrefs/>
					<tags/>
				</source>
				<target xmi:idref="EAID_3162AFD6_616D_4336_AE4C_34EB9D1B3488">
					<model ea_localid="68" type="Class" name="Operacion"/>
					<role visibility="Public" targetScope="instance"/>
					<type aggregation="none" containment="Unspecified"/>
					<constraints/>
					<modifiers isOrdered="false" changeable="none" isNavigable="true"/>
					<style value="Union=0;Derived=0;AllowDuplicates=0;"/>
					<documentation/>
					<xrefs/>
					<tags/>
				</target>
				<model ea_localid="73"/>
				<properties ea_type="Generalization" direction="Source -&gt; Destination"/>
				<documentation/>
				<appearance linemode="3" linecolor="-1" linewidth="1" seqno="0" headStyle="0" lineStyle="0"/>
				<labels/>
				<extendedProperties virtualInheritance="0"/>
				<style/>
				<xrefs value="$XREFPROP=$XID={0C6A45B0-F93D-411d-BC27-4450157A7635}$XID;$NAM=CustomProperties$NAM;$TYP=connector property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isSubstitutable@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={DE36CD73-D70E-41e2-90F5-F3E9C3CF0B62}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
				<tags/>
			</connector>
			<connector xmi:idref="EAID_309B3175_69C9_4aea_AAD2_56C20D8ABBB4">
				<source xmi:idref="EAID_F3421EFA_73DA_4666_A102_BDC5DE63DB87">
					<model ea_localid="90" type="Note"/>
					<role visibility="Public" targetScope="instance"/>
					<type aggregation="none" containment="Unspecified"/>
					<constraints/>
					<modifiers isOrdered="false" changeable="none" isNavigable="false"/>
					<style value="Union=0;Derived=0;AllowDuplicates=0;"/>
					<documentation/>
					<xrefs/>
					<tags/>
				</source>
				<target xmi:idref="EAID_912BC6F8_FB18_4416_9432_1AD48775676D">
					<model ea_localid="55" type="Class" name="Estado"/>
					<role visibility="Public" targetScope="instance"/>
					<type aggregation="none" containment="Unspecified"/>
					<constraints/>
					<modifiers isOrdered="false" changeable="none" isNavigable="true"/>
					<style value="Union=0;Derived=0;AllowDuplicates=0;"/>
					<documentation/>
					<xrefs/>
					<tags/>
				</target>
				<model ea_localid="94"/>
				<properties ea_type="NoteLink" direction="Source -&gt; Destination"/>
				<modifiers isRoot="false" isLeaf="false"/>
				<documentation/>
				<appearance linemode="3" linecolor="-1" linewidth="1" seqno="0" headStyle="0" lineStyle="0"/>
				<labels/>
				<extendedProperties virtualInheritance="0"/>
				<style/>
				<xrefs/>
				<tags/>
			</connector>
			<connector xmi:idref="EAID_AFD12064_D744_416c_9929_463B66BB4502">
				<source xmi:idref="EAID_6CB52BAE_49D2_4ea3_81BE_B04CC15BD9AB">
					<model ea_localid="226" type="Class" name="Formulario"/>
					<role visibility="Public" targetScope="instance"/>
					<type multiplicity="1" aggregation="none" containment="Unspecified"/>
					<constraints/>
					<modifiers isOrdered="false" changeable="none" isNavigable="false"/>
					<style value="Union=0;Derived=0;AllowDuplicates=0;Owned=0;Navigable=Unspecified;"/>
					<documentation/>
					<xrefs value="$XREFPROP=$XID={F7C718EF-A107-43bc-B5C8-D01812994CF6}$XID;$NAM=CustomProperties$NAM;$TYP=connectorSrcEnd property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isDerivedUnion@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isDerived@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=default@ENDNAME;@TYPE=String@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isReadOnly@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isComposite@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=aggregation@ENDNAME;@TYPE=AggregationKind@ENDTYPE;@VALU=none@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={AFD12064-D744-416c-9929-463B66BB4502}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
					<tags/>
				</source>
				<target xmi:idref="EAID_7B8740F5_412B_4150_91DF_8C3A06A3C5FB">
					<model ea_localid="228" type="Class" name="Seccion"/>
					<role visibility="Public" targetScope="instance"/>
					<type multiplicity="*" aggregation="none" containment="Unspecified"/>
					<constraints/>
					<modifiers isOrdered="false" changeable="none" isNavigable="true"/>
					<style value="Union=0;Derived=0;AllowDuplicates=0;Owned=0;Navigable=Unspecified;"/>
					<documentation/>
					<xrefs value="$XREFPROP=$XID={803CA404-8719-4095-BC41-F4F0378A9B8C}$XID;$NAM=CustomProperties$NAM;$TYP=connectorDestEnd property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isDerivedUnion@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isDerived@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=default@ENDNAME;@TYPE=String@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isReadOnly@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isComposite@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=aggregation@ENDNAME;@TYPE=AggregationKind@ENDTYPE;@VALU=none@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={AFD12064-D744-416c-9929-463B66BB4502}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
					<tags/>
				</target>
				<model ea_localid="260"/>
				<properties ea_type="Association" direction="Unspecified"/>
				<modifiers isRoot="false" isLeaf="false"/>
				<documentation/>
				<appearance linemode="3" linecolor="-1" linewidth="1" seqno="0" headStyle="0" lineStyle="0"/>
				<labels lb="1" rb="*"/>
				<extendedProperties virtualInheritance="0"/>
				<style/>
				<xrefs value="$XREFPROP=$XID={BDFBDC67-7C93-4ce4-9D25-FD9761FF46FC}$XID;$NAM=CustomProperties$NAM;$TYP=connector property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isDerived@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={AFD12064-D744-416c-9929-463B66BB4502}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
				<tags/>
			</connector>
			<connector xmi:idref="EAID_FF0A3986_CAC6_4a7c_8BF8_8566749F83C7">
				<source xmi:idref="EAID_DB6D4F90_8A74_4253_A05F_15E389F9E7BF">
					<model ea_localid="219" type="Class" name="Registro"/>
					<role visibility="Public" targetScope="instance"/>
					<type multiplicity="1" aggregation="none" containment="Unspecified"/>
					<constraints/>
					<modifiers isOrdered="false" changeable="none" isNavigable="false"/>
					<style value="Union=0;Derived=0;AllowDuplicates=0;Owned=0;Navigable=Unspecified;"/>
					<documentation/>
					<xrefs value="$XREFPROP=$XID={76533943-7A9A-4bf4-BC3E-08FB7538F74C}$XID;$NAM=CustomProperties$NAM;$TYP=connectorSrcEnd property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isDerivedUnion@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isDerived@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=default@ENDNAME;@TYPE=String@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isReadOnly@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isComposite@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=aggregation@ENDNAME;@TYPE=AggregationKind@ENDTYPE;@VALU=none@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={FF0A3986-CAC6-4a7c-8BF8-8566749F83C7}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
					<tags/>
				</source>
				<target xmi:idref="EAID_6CB52BAE_49D2_4ea3_81BE_B04CC15BD9AB">
					<model ea_localid="226" type="Class" name="Formulario"/>
					<role visibility="Public" targetScope="instance"/>
					<type multiplicity="1" aggregation="none" containment="Unspecified"/>
					<constraints/>
					<modifiers isOrdered="false" changeable="none" isNavigable="true"/>
					<style value="Union=0;Derived=0;AllowDuplicates=0;Owned=0;Navigable=Unspecified;"/>
					<documentation/>
					<xrefs value="$XREFPROP=$XID={0D34E41B-3A73-45bf-95A3-9D49B9DBA064}$XID;$NAM=CustomProperties$NAM;$TYP=connectorDestEnd property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isDerivedUnion@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isDerived@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=default@ENDNAME;@TYPE=String@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isReadOnly@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isComposite@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=aggregation@ENDNAME;@TYPE=AggregationKind@ENDTYPE;@VALU=none@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={FF0A3986-CAC6-4a7c-8BF8-8566749F83C7}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
					<tags/>
				</target>
				<model ea_localid="258"/>
				<properties ea_type="Association" direction="Unspecified"/>
				<modifiers isRoot="false" isLeaf="false"/>
				<documentation/>
				<appearance linemode="3" linecolor="-1" linewidth="1" seqno="0" headStyle="0" lineStyle="0"/>
				<labels lb="1" rb="1"/>
				<extendedProperties virtualInheritance="0"/>
				<style/>
				<xrefs value="$XREFPROP=$XID={BFD64B30-0E43-426e-BAE2-D3179106AACE}$XID;$NAM=CustomProperties$NAM;$TYP=connector property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isDerived@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={FF0A3986-CAC6-4a7c-8BF8-8566749F83C7}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
				<tags/>
			</connector>
			<connector xmi:idref="EAID_5F1DD95D_E546_4b97_89F3_A85E61203D8E">
				<source xmi:idref="EAID_22B30324_7B92_4f0f_8E5B_235CC3C311DB">
					<model ea_localid="85" type="Class" name="Grupo"/>
					<role visibility="Public" targetScope="instance"/>
					<type multiplicity="*" aggregation="none" containment="Unspecified"/>
					<constraints/>
					<modifiers isOrdered="false" changeable="none" isNavigable="false"/>
					<style value="Union=0;Derived=0;AllowDuplicates=0;Owned=0;Navigable=Unspecified;"/>
					<documentation/>
					<xrefs value="$XREFPROP=$XID={38DA6F55-D24C-4931-8106-E871AB5BE892}$XID;$NAM=CustomProperties$NAM;$TYP=connectorSrcEnd property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isDerivedUnion@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isDerived@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=default@ENDNAME;@TYPE=String@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isReadOnly@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isComposite@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=aggregation@ENDNAME;@TYPE=AggregationKind@ENDTYPE;@VALU=none@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={5F1DD95D-E546-4b97-89F3-A85E61203D8E}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
					<tags/>
				</source>
				<target xmi:idref="EAID_45EC5E8D_6B18_47cd_89C8_75BCE1502DE1">
					<model ea_localid="67" type="Class" name="Persona"/>
					<role visibility="Public" targetScope="instance"/>
					<type multiplicity="*" aggregation="none" containment="Unspecified"/>
					<constraints/>
					<modifiers isOrdered="false" changeable="none" isNavigable="true"/>
					<style value="Union=0;Derived=0;AllowDuplicates=0;Owned=0;Navigable=Unspecified;"/>
					<documentation/>
					<xrefs value="$XREFPROP=$XID={C626A44A-50B3-4007-B45E-645ACD23CB52}$XID;$NAM=CustomProperties$NAM;$TYP=connectorDestEnd property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isDerivedUnion@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isDerived@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=default@ENDNAME;@TYPE=String@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isReadOnly@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isComposite@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=aggregation@ENDNAME;@TYPE=AggregationKind@ENDTYPE;@VALU=none@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={5F1DD95D-E546-4b97-89F3-A85E61203D8E}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
					<tags/>
				</target>
				<model ea_localid="141"/>
				<properties ea_type="Association" direction="Unspecified"/>
				<modifiers isRoot="false" isLeaf="false"/>
				<documentation/>
				<appearance linemode="3" linecolor="-1" linewidth="1" seqno="0" headStyle="0" lineStyle="0"/>
				<labels lb="*" rb="*"/>
				<extendedProperties virtualInheritance="0"/>
				<style/>
				<xrefs value="$XREFPROP=$XID={B0CB8923-B753-4466-9256-39968D062F12}$XID;$NAM=CustomProperties$NAM;$TYP=connector property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isDerived@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={5F1DD95D-E546-4b97-89F3-A85E61203D8E}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
				<tags/>
			</connector>
			<connector xmi:idref="EAID_6AF2F907_A5DB_47ad_B51F_194EF29CA96D">
				<source xmi:idref="EAID_22B30324_7B92_4f0f_8E5B_235CC3C311DB">
					<model ea_localid="85" type="Class" name="Grupo"/>
					<role visibility="Public" targetScope="instance"/>
					<type multiplicity="1" aggregation="none" containment="Unspecified"/>
					<constraints/>
					<modifiers isOrdered="false" changeable="none" isNavigable="false"/>
					<style value="Union=0;Derived=0;AllowDuplicates=0;Owned=0;Navigable=Unspecified;"/>
					<documentation/>
					<xrefs value="$XREFPROP=$XID={76C56662-B1F3-4614-8713-809721B47C08}$XID;$NAM=CustomProperties$NAM;$TYP=connectorSrcEnd property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isDerivedUnion@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isDerived@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=default@ENDNAME;@TYPE=String@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isReadOnly@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isComposite@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=aggregation@ENDNAME;@TYPE=AggregationKind@ENDTYPE;@VALU=none@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={6AF2F907-A5DB-47ad-B51F-194EF29CA96D}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
					<tags/>
				</source>
				<target xmi:idref="EAID_D6358D5E_863D_44a7_96D9_9C3E91364044">
					<model ea_localid="65" type="Class" name="Rol"/>
					<role visibility="Public" targetScope="instance"/>
					<type multiplicity="1" aggregation="none" containment="Unspecified"/>
					<constraints/>
					<modifiers isOrdered="false" changeable="none" isNavigable="true"/>
					<style value="Union=0;Derived=0;AllowDuplicates=0;Owned=0;Navigable=Unspecified;"/>
					<documentation/>
					<xrefs value="$XREFPROP=$XID={55B6DC9F-C6E0-4f12-8DDC-CEFB2A256314}$XID;$NAM=CustomProperties$NAM;$TYP=connectorDestEnd property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isDerivedUnion@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isDerived@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=default@ENDNAME;@TYPE=String@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isReadOnly@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isComposite@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=aggregation@ENDNAME;@TYPE=AggregationKind@ENDTYPE;@VALU=none@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={6AF2F907-A5DB-47ad-B51F-194EF29CA96D}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
					<tags/>
				</target>
				<model ea_localid="90"/>
				<properties ea_type="Association" direction="Unspecified"/>
				<modifiers isRoot="false" isLeaf="false"/>
				<documentation/>
				<appearance linemode="3" linecolor="-1" linewidth="1" seqno="0" headStyle="0" lineStyle="0"/>
				<labels lb="1" rb="1"/>
				<extendedProperties virtualInheritance="0"/>
				<style/>
				<xrefs value="$XREFPROP=$XID={71E381E4-EFBA-45d9-9CDC-4D968FBAE6E6}$XID;$NAM=CustomProperties$NAM;$TYP=connector property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isDerived@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={6AF2F907-A5DB-47ad-B51F-194EF29CA96D}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
				<tags/>
			</connector>
			<connector xmi:idref="EAID_D27CC9E9_DAE1_4e24_AD83_A04C4844AD24">
				<source xmi:idref="EAID_D177CECD_84CC_4aaf_990C_380C7A16A55B">
					<model ea_localid="108" type="Class" name="MaquinaEstado"/>
					<role visibility="Public" targetScope="instance"/>
					<type multiplicity="1" aggregation="none" containment="Unspecified"/>
					<constraints/>
					<modifiers isOrdered="false" changeable="none" isNavigable="false"/>
					<style value="Union=0;Derived=0;AllowDuplicates=0;Owned=0;Navigable=Unspecified;"/>
					<documentation/>
					<xrefs value="$XREFPROP=$XID={04157AE4-251E-4793-8212-53341C245208}$XID;$NAM=CustomProperties$NAM;$TYP=connectorSrcEnd property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isDerivedUnion@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isDerived@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=default@ENDNAME;@TYPE=String@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isReadOnly@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isComposite@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=aggregation@ENDNAME;@TYPE=AggregationKind@ENDTYPE;@VALU=none@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={D27CC9E9-DAE1-4e24-AD83-A04C4844AD24}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
					<tags/>
				</source>
				<target xmi:idref="EAID_D177CECD_84CC_4aaf_990C_380C7A16A55B">
					<model ea_localid="108" type="Class" name="MaquinaEstado"/>
					<role visibility="Public" targetScope="instance"/>
					<type multiplicity="*" aggregation="none" containment="Unspecified"/>
					<constraints/>
					<modifiers isOrdered="false" changeable="none" isNavigable="true"/>
					<style value="Union=0;Derived=0;AllowDuplicates=0;Owned=0;Navigable=Unspecified;"/>
					<documentation/>
					<xrefs value="$XREFPROP=$XID={FBC3AA41-0CCD-46f0-95C6-98410DB140E9}$XID;$NAM=CustomProperties$NAM;$TYP=connectorDestEnd property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isDerivedUnion@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isDerived@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=default@ENDNAME;@TYPE=String@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isReadOnly@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isComposite@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=aggregation@ENDNAME;@TYPE=AggregationKind@ENDTYPE;@VALU=none@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={D27CC9E9-DAE1-4e24-AD83-A04C4844AD24}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
					<tags/>
				</target>
				<model ea_localid="240"/>
				<properties ea_type="Association" direction="Unspecified"/>
				<modifiers isRoot="false" isLeaf="false"/>
				<documentation/>
				<appearance linemode="3" linecolor="-1" linewidth="1" seqno="0" headStyle="0" lineStyle="0"/>
				<labels lb="1" rb="*"/>
				<extendedProperties virtualInheritance="0"/>
				<style/>
				<xrefs value="$XREFPROP=$XID={B9604432-8E7B-4abc-998E-A7300B562A0C}$XID;$NAM=CustomProperties$NAM;$TYP=connector property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isDerived@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={D27CC9E9-DAE1-4e24-AD83-A04C4844AD24}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
				<tags/>
			</connector>
			<connector xmi:idref="EAID_B1F885E5_5EA6_4607_BD57_C2659E7B9099">
				<source xmi:idref="EAID_BE145EF8_3054_4b41_ABF8_23A90BB5F4D2">
					<model ea_localid="66" type="Class" name="Transicion"/>
					<role visibility="Public" targetScope="instance"/>
					<type multiplicity="*" aggregation="none" containment="Unspecified"/>
					<constraints/>
					<modifiers isOrdered="false" changeable="none" isNavigable="false"/>
					<style value="Union=0;Derived=0;AllowDuplicates=0;Owned=0;Navigable=Unspecified;"/>
					<documentation/>
					<xrefs value="$XREFPROP=$XID={E4848292-2AC5-4fae-9AFB-48D0062F6B5F}$XID;$NAM=CustomProperties$NAM;$TYP=connectorSrcEnd property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isDerivedUnion@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isDerived@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=default@ENDNAME;@TYPE=String@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isReadOnly@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isComposite@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=aggregation@ENDNAME;@TYPE=AggregationKind@ENDTYPE;@VALU=none@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={B1F885E5-5EA6-4607-BD57-C2659E7B9099}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
					<tags/>
				</source>
				<target xmi:idref="EAID_D177CECD_84CC_4aaf_990C_380C7A16A55B">
					<model ea_localid="108" type="Class" name="MaquinaEstado"/>
					<role visibility="Public" targetScope="instance"/>
					<type multiplicity="1" aggregation="none" containment="Unspecified"/>
					<constraints/>
					<modifiers isOrdered="false" changeable="none" isNavigable="true"/>
					<style value="Union=0;Derived=0;AllowDuplicates=0;Owned=0;Navigable=Unspecified;"/>
					<documentation/>
					<xrefs value="$XREFPROP=$XID={D0BBC53A-A15D-47d1-87D7-F5F411CCB051}$XID;$NAM=CustomProperties$NAM;$TYP=connectorDestEnd property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isDerivedUnion@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isDerived@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=default@ENDNAME;@TYPE=String@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isReadOnly@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isComposite@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=aggregation@ENDNAME;@TYPE=AggregationKind@ENDTYPE;@VALU=none@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={B1F885E5-5EA6-4607-BD57-C2659E7B9099}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
					<tags/>
				</target>
				<model ea_localid="128"/>
				<properties ea_type="Association" direction="Unspecified"/>
				<modifiers isRoot="false" isLeaf="false"/>
				<documentation/>
				<appearance linemode="3" linecolor="-1" linewidth="1" seqno="0" headStyle="0" lineStyle="0"/>
				<labels lb="*" rb="1"/>
				<extendedProperties virtualInheritance="0"/>
				<style/>
				<xrefs value="$XREFPROP=$XID={3E62A57D-0454-41dd-97CD-9275DEFE6138}$XID;$NAM=CustomProperties$NAM;$TYP=connector property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isDerived@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={B1F885E5-5EA6-4607-BD57-C2659E7B9099}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
				<tags/>
			</connector>
			<connector xmi:idref="EAID_B64D968A_3739_4811_ADAA_E6D8B216885A">
				<source xmi:idref="EAID_FE7F224E_CFE5_4b65_955B_7C2F6DA74495">
					<model ea_localid="216" type="Class" name="ProcesoRegistro"/>
					<role visibility="Public" targetScope="instance"/>
					<type aggregation="none" containment="Unspecified"/>
					<constraints/>
					<modifiers isOrdered="false" changeable="none" isNavigable="false"/>
					<style value="Union=0;Derived=0;AllowDuplicates=0;"/>
					<documentation/>
					<xrefs/>
					<tags/>
				</source>
				<target xmi:idref="EAID_D177CECD_84CC_4aaf_990C_380C7A16A55B">
					<model ea_localid="108" type="Class" name="MaquinaEstado"/>
					<role visibility="Public" targetScope="instance"/>
					<type aggregation="none" containment="Unspecified"/>
					<constraints/>
					<modifiers isOrdered="false" changeable="none" isNavigable="true"/>
					<style value="Union=0;Derived=0;AllowDuplicates=0;"/>
					<documentation/>
					<xrefs/>
					<tags/>
				</target>
				<model ea_localid="239"/>
				<properties ea_type="Generalization" direction="Source -&gt; Destination"/>
				<documentation/>
				<appearance linemode="3" linecolor="255" linewidth="3" seqno="0" headStyle="0" lineStyle="0"/>
				<labels/>
				<extendedProperties virtualInheritance="0"/>
				<style/>
				<xrefs value="$XREFPROP=$XID={8105BF4E-5B21-4e27-883A-6842CCAA0B81}$XID;$NAM=CustomProperties$NAM;$TYP=connector property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isSubstitutable@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={B64D968A-3739-4811-ADAA-E6D8B216885A}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
				<tags/>
			</connector>
			<connector xmi:idref="EAID_A0B1B089_F217_4d63_9D88_FACF60C1156B">
				<source xmi:idref="EAID_3162AFD6_616D_4336_AE4C_34EB9D1B3488">
					<model ea_localid="68" type="Class" name="Operacion"/>
					<role visibility="Public" targetScope="instance"/>
					<type aggregation="none" containment="Unspecified"/>
					<constraints/>
					<modifiers isOrdered="false" changeable="none" isNavigable="false"/>
					<style value="Union=0;Derived=0;AllowDuplicates=0;Owned=0;Navigable=Non-Navigable;"/>
					<documentation/>
					<xrefs/>
					<tags/>
				</source>
				<target xmi:idref="EAID_1B36C7BA_F634_4898_879E_D309C09CC6D0">
					<model ea_localid="82" type="Class" name="PoliticaPermisos"/>
					<role visibility="Public" targetScope="instance"/>
					<type aggregation="none" containment="Unspecified"/>
					<constraints/>
					<modifiers isOrdered="false" changeable="none" isNavigable="true"/>
					<style value="Union=0;Derived=0;AllowDuplicates=0;Owned=0;Navigable=Navigable;"/>
					<documentation/>
					<xrefs/>
					<tags/>
				</target>
				<model ea_localid="89"/>
				<properties ea_type="Dependency" direction="Source -&gt; Destination"/>
				<documentation/>
				<appearance linemode="3" linecolor="-1" linewidth="1" seqno="0" headStyle="0" lineStyle="0"/>
				<labels mt="PoliticaPermisos actual"/>
				<extendedProperties virtualInheritance="0"/>
				<style/>
				<xrefs/>
				<tags/>
			</connector>
			<connector xmi:idref="EAID_14CB2FEB_3D57_41cf_91E5_0FB13B6F6CE4">
				<source xmi:idref="EAID_CEF9C3D7_F0C2_482e_B16B_A3CC89B10464">
					<model ea_localid="69" type="Class" name="Ver"/>
					<role visibility="Public" targetScope="instance"/>
					<type aggregation="none" containment="Unspecified"/>
					<constraints/>
					<modifiers isOrdered="false" changeable="none" isNavigable="false"/>
					<style value="Union=0;Derived=0;AllowDuplicates=0;"/>
					<documentation/>
					<xrefs/>
					<tags/>
				</source>
				<target xmi:idref="EAID_3162AFD6_616D_4336_AE4C_34EB9D1B3488">
					<model ea_localid="68" type="Class" name="Operacion"/>
					<role visibility="Public" targetScope="instance"/>
					<type aggregation="none" containment="Unspecified"/>
					<constraints/>
					<modifiers isOrdered="false" changeable="none" isNavigable="true"/>
					<style value="Union=0;Derived=0;AllowDuplicates=0;"/>
					<documentation/>
					<xrefs/>
					<tags/>
				</target>
				<model ea_localid="66"/>
				<properties ea_type="Generalization" direction="Source -&gt; Destination"/>
				<documentation/>
				<appearance linemode="3" linecolor="-1" linewidth="1" seqno="0" headStyle="0" lineStyle="0"/>
				<labels/>
				<extendedProperties virtualInheritance="0"/>
				<style/>
				<xrefs value="$XREFPROP=$XID={97B19959-A3B9-4974-9C5A-DE04CDE3F796}$XID;$NAM=CustomProperties$NAM;$TYP=connector property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isSubstitutable@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={14CB2FEB-3D57-41cf-91E5-0FB13B6F6CE4}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
				<tags/>
			</connector>
			<connector xmi:idref="EAID_981508D0_5373_4349_A263_5D78463468D6">
				<source xmi:idref="EAID_D6358D5E_863D_44a7_96D9_9C3E91364044">
					<model ea_localid="65" type="Class" name="Rol"/>
					<role visibility="Public" targetScope="instance"/>
					<type multiplicity="*" aggregation="none" containment="Unspecified"/>
					<constraints/>
					<modifiers isOrdered="false" changeable="none" isNavigable="false"/>
					<style value="Union=0;Derived=0;AllowDuplicates=0;Owned=0;Navigable=Unspecified;"/>
					<documentation/>
					<xrefs value="$XREFPROP=$XID={F00D84C2-3BD3-453e-8491-D05E68433202}$XID;$NAM=CustomProperties$NAM;$TYP=connectorSrcEnd property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isDerivedUnion@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isDerived@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=default@ENDNAME;@TYPE=String@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isReadOnly@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isComposite@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=aggregation@ENDNAME;@TYPE=AggregationKind@ENDTYPE;@VALU=none@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={981508D0-5373-4349-A263-5D78463468D6}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
					<tags/>
				</source>
				<target xmi:idref="EAID_3162AFD6_616D_4336_AE4C_34EB9D1B3488">
					<model ea_localid="68" type="Class" name="Operacion"/>
					<role visibility="Public" targetScope="instance"/>
					<type multiplicity="*" aggregation="none" containment="Unspecified"/>
					<constraints/>
					<modifiers isOrdered="false" changeable="none" isNavigable="true"/>
					<style value="Union=0;Derived=0;AllowDuplicates=0;Owned=0;Navigable=Unspecified;"/>
					<documentation/>
					<xrefs value="$XREFPROP=$XID={F18147D9-875B-4cea-8D5A-FC4037C85E72}$XID;$NAM=CustomProperties$NAM;$TYP=connectorDestEnd property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isDerivedUnion@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isDerived@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=default@ENDNAME;@TYPE=String@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isReadOnly@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isComposite@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=aggregation@ENDNAME;@TYPE=AggregationKind@ENDTYPE;@VALU=none@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={981508D0-5373-4349-A263-5D78463468D6}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
					<tags/>
				</target>
				<model ea_localid="68"/>
				<properties ea_type="Association" direction="Unspecified"/>
				<modifiers isRoot="false" isLeaf="false"/>
				<documentation/>
				<appearance linemode="3" linecolor="32896" linewidth="3" seqno="0" headStyle="0" lineStyle="0"/>
				<labels lb="*" mt="permisos sobre objetos" rb="*"/>
				<extendedProperties virtualInheritance="0"/>
				<style/>
				<xrefs value="$XREFPROP=$XID={02C4207D-5799-4196-BD6D-A7901A8AC5D0}$XID;$NAM=CustomProperties$NAM;$TYP=connector property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isDerived@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={981508D0-5373-4349-A263-5D78463468D6}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
				<tags/>
			</connector>
			<connector xmi:idref="EAID_C7788AF2_4D96_46cd_8B26_96CD81D95752">
				<source xmi:idref="EAID_AFEEBDB2_0B99_427c_BAC5_50B68B2A1C48">
					<model ea_localid="225" type="Class" name="Organismo"/>
					<role visibility="Public" targetScope="instance"/>
					<type multiplicity="1" aggregation="none" containment="Unspecified"/>
					<constraints/>
					<modifiers isOrdered="false" changeable="none" isNavigable="false"/>
					<style value="Union=0;Derived=0;AllowDuplicates=0;Owned=0;Navigable=Unspecified;"/>
					<documentation/>
					<xrefs value="$XREFPROP=$XID={18E2D3FD-555C-431e-A486-5F188710DDDA}$XID;$NAM=CustomProperties$NAM;$TYP=connectorSrcEnd property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isDerivedUnion@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isDerived@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=default@ENDNAME;@TYPE=String@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isReadOnly@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isComposite@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=aggregation@ENDNAME;@TYPE=AggregationKind@ENDTYPE;@VALU=none@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={C7788AF2-4D96-46cd-8B26-96CD81D95752}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
					<tags/>
				</source>
				<target xmi:idref="EAID_DB6D4F90_8A74_4253_A05F_15E389F9E7BF">
					<model ea_localid="219" type="Class" name="Registro"/>
					<role visibility="Public" targetScope="instance"/>
					<type multiplicity="*" aggregation="none" containment="Unspecified"/>
					<constraints/>
					<modifiers isOrdered="false" changeable="none" isNavigable="true"/>
					<style value="Union=0;Derived=0;AllowDuplicates=0;Owned=0;Navigable=Unspecified;"/>
					<documentation/>
					<xrefs value="$XREFPROP=$XID={42DF6D1D-EFE4-4c60-B099-67D4E0962A23}$XID;$NAM=CustomProperties$NAM;$TYP=connectorDestEnd property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isDerivedUnion@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isDerived@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=default@ENDNAME;@TYPE=String@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isReadOnly@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isComposite@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=aggregation@ENDNAME;@TYPE=AggregationKind@ENDTYPE;@VALU=none@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={C7788AF2-4D96-46cd-8B26-96CD81D95752}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
					<tags/>
				</target>
				<model ea_localid="256"/>
				<properties ea_type="Association" direction="Unspecified"/>
				<modifiers isRoot="false" isLeaf="false"/>
				<documentation/>
				<appearance linemode="3" linecolor="-1" linewidth="1" seqno="0" headStyle="0" lineStyle="0"/>
				<labels lb="1" rb="*"/>
				<extendedProperties virtualInheritance="0"/>
				<style/>
				<xrefs value="$XREFPROP=$XID={6D4239DB-5801-482f-8F86-A386050145A6}$XID;$NAM=CustomProperties$NAM;$TYP=connector property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isDerived@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={C7788AF2-4D96-46cd-8B26-96CD81D95752}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
				<tags/>
			</connector>
			<connector xmi:idref="EAID_E9AED687_E073_42f0_9721_0034CE06B021">
				<source xmi:idref="EAID_AFEEBDB2_0B99_427c_BAC5_50B68B2A1C48">
					<model ea_localid="225" type="Class" name="Organismo"/>
					<role visibility="Public" targetScope="instance"/>
					<type multiplicity="1" aggregation="none" containment="Unspecified"/>
					<constraints/>
					<modifiers isOrdered="false" changeable="none" isNavigable="false"/>
					<style value="Union=0;Derived=0;AllowDuplicates=0;Owned=0;Navigable=Unspecified;"/>
					<documentation/>
					<xrefs value="$XREFPROP=$XID={CFCB63A9-4676-4487-9AFB-A3E5B3871E61}$XID;$NAM=CustomProperties$NAM;$TYP=connectorSrcEnd property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isDerivedUnion@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isDerived@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=default@ENDNAME;@TYPE=String@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isReadOnly@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isComposite@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=aggregation@ENDNAME;@TYPE=AggregationKind@ENDTYPE;@VALU=none@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={E9AED687-E073-42f0-9721-0034CE06B021}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
					<tags/>
				</source>
				<target xmi:idref="EAID_1E20EBB1_2E74_4f5a_9D4F_ABCBC4FA9468">
					<model ea_localid="202" type="Class" name="PersonaRegistro"/>
					<role visibility="Public" targetScope="instance"/>
					<type multiplicity="*" aggregation="none" containment="Unspecified"/>
					<constraints/>
					<modifiers isOrdered="false" changeable="none" isNavigable="true"/>
					<style value="Union=0;Derived=0;AllowDuplicates=0;Owned=0;Navigable=Unspecified;"/>
					<documentation/>
					<xrefs value="$XREFPROP=$XID={8F7FE2B5-60BD-4902-B2EC-E9A97F6D6109}$XID;$NAM=CustomProperties$NAM;$TYP=connectorDestEnd property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isDerivedUnion@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isDerived@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=default@ENDNAME;@TYPE=String@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isReadOnly@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isComposite@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=aggregation@ENDNAME;@TYPE=AggregationKind@ENDTYPE;@VALU=none@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={E9AED687-E073-42f0-9721-0034CE06B021}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
					<tags/>
				</target>
				<model ea_localid="257"/>
				<properties ea_type="Association" direction="Unspecified"/>
				<modifiers isRoot="false" isLeaf="false"/>
				<documentation/>
				<appearance linemode="3" linecolor="-1" linewidth="1" seqno="0" headStyle="0" lineStyle="0"/>
				<labels lb="1" rb="*"/>
				<extendedProperties virtualInheritance="0"/>
				<style/>
				<xrefs value="$XREFPROP=$XID={D926E08A-BCC9-4e78-BED6-E15193D7DB68}$XID;$NAM=CustomProperties$NAM;$TYP=connector property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isDerived@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={E9AED687-E073-42f0-9721-0034CE06B021}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
				<tags/>
			</connector>
			<connector xmi:idref="EAID_A580BC3B_9F70_411f_BE46_97C7D71D18A8">
				<source xmi:idref="EAID_6C8173D9_7C14_443b_BA64_2EF4ECB491A4">
					<model ea_localid="83" type="Class" name="Permiso"/>
					<role visibility="Public" targetScope="instance"/>
					<type aggregation="none" containment="Unspecified"/>
					<constraints/>
					<modifiers isOrdered="false" changeable="none" isNavigable="false"/>
					<style value="Union=0;Derived=0;AllowDuplicates=0;"/>
					<documentation/>
					<xrefs/>
					<tags/>
				</source>
				<target xmi:idref="EAID_1B36C7BA_F634_4898_879E_D309C09CC6D0">
					<model ea_localid="82" type="Class" name="PoliticaPermisos"/>
					<role visibility="Public" targetScope="instance"/>
					<type aggregation="none" containment="Unspecified"/>
					<constraints/>
					<modifiers isOrdered="false" changeable="none" isNavigable="true"/>
					<style value="Union=0;Derived=0;AllowDuplicates=0;"/>
					<documentation/>
					<xrefs/>
					<tags/>
				</target>
				<model ea_localid="86"/>
				<properties ea_type="Generalization" direction="Source -&gt; Destination"/>
				<documentation/>
				<appearance linemode="3" linecolor="-1" linewidth="1" seqno="0" headStyle="0" lineStyle="0"/>
				<labels/>
				<extendedProperties virtualInheritance="0"/>
				<style/>
				<xrefs value="$XREFPROP=$XID={3DC20331-094D-460b-932B-2A2E522C4AB6}$XID;$NAM=CustomProperties$NAM;$TYP=connector property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isSubstitutable@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={A580BC3B-9F70-411f-BE46-97C7D71D18A8}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
				<tags/>
			</connector>
			<connector xmi:idref="EAID_E9EFA9B0_AA4B_47bb_B785_823C4F0363D6">
				<source xmi:idref="EAID_1E20EBB1_2E74_4f5a_9D4F_ABCBC4FA9468">
					<model ea_localid="202" type="Class" name="PersonaRegistro"/>
					<role visibility="Public" targetScope="instance"/>
					<type aggregation="none" containment="Unspecified"/>
					<constraints/>
					<modifiers isOrdered="false" changeable="none" isNavigable="false"/>
					<style value="Union=0;Derived=0;AllowDuplicates=0;"/>
					<documentation/>
					<xrefs/>
					<tags/>
				</source>
				<target xmi:idref="EAID_45EC5E8D_6B18_47cd_89C8_75BCE1502DE1">
					<model ea_localid="67" type="Class" name="Persona"/>
					<role visibility="Public" targetScope="instance"/>
					<type aggregation="none" containment="Unspecified"/>
					<constraints/>
					<modifiers isOrdered="false" changeable="none" isNavigable="true"/>
					<style value="Union=0;Derived=0;AllowDuplicates=0;"/>
					<documentation/>
					<xrefs/>
					<tags/>
				</target>
				<model ea_localid="224"/>
				<properties ea_type="Generalization" direction="Source -&gt; Destination"/>
				<documentation/>
				<appearance linemode="3" linecolor="255" linewidth="3" seqno="0" headStyle="0" lineStyle="0"/>
				<labels/>
				<extendedProperties virtualInheritance="0"/>
				<style/>
				<xrefs value="$XREFPROP=$XID={4D04944F-41CC-41c7-AE0F-1BE6A058D638}$XID;$NAM=CustomProperties$NAM;$TYP=connector property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isSubstitutable@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={E9EFA9B0-AA4B-47bb-B785-823C4F0363D6}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
				<tags/>
			</connector>
			<connector xmi:idref="EAID_ED27E60E_B56F_4457_ABE5_417D16E8B5CD">
				<source xmi:idref="EAID_DB6D4F90_8A74_4253_A05F_15E389F9E7BF">
					<model ea_localid="219" type="Class" name="Registro"/>
					<role visibility="Public" targetScope="instance"/>
					<type multiplicity="*" aggregation="none" containment="Unspecified"/>
					<constraints/>
					<modifiers isOrdered="false" changeable="none" isNavigable="false"/>
					<style value="Union=0;Derived=0;AllowDuplicates=0;Owned=0;Navigable=Unspecified;"/>
					<documentation/>
					<xrefs value="$XREFPROP=$XID={0D3922E4-AD9C-46a4-BB62-C0C200816B48}$XID;$NAM=CustomProperties$NAM;$TYP=connectorSrcEnd property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isDerivedUnion@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isDerived@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=default@ENDNAME;@TYPE=String@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isReadOnly@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isComposite@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=aggregation@ENDNAME;@TYPE=AggregationKind@ENDTYPE;@VALU=none@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={ED27E60E-B56F-4457-ABE5-417D16E8B5CD}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
					<tags/>
				</source>
				<target xmi:idref="EAID_1E20EBB1_2E74_4f5a_9D4F_ABCBC4FA9468">
					<model ea_localid="202" type="Class" name="PersonaRegistro"/>
					<role visibility="Public" targetScope="instance"/>
					<type multiplicity="1" aggregation="none" containment="Unspecified"/>
					<constraints/>
					<modifiers isOrdered="false" changeable="none" isNavigable="true"/>
					<style value="Union=0;Derived=0;AllowDuplicates=0;Owned=0;Navigable=Unspecified;"/>
					<documentation/>
					<xrefs value="$XREFPROP=$XID={AA11079F-4587-4a6a-8B0B-F64E6A2BDFCF}$XID;$NAM=CustomProperties$NAM;$TYP=connectorDestEnd property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isDerivedUnion@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isDerived@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=default@ENDNAME;@TYPE=String@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isReadOnly@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isComposite@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=aggregation@ENDNAME;@TYPE=AggregationKind@ENDTYPE;@VALU=none@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={ED27E60E-B56F-4457-ABE5-417D16E8B5CD}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
					<tags/>
				</target>
				<model ea_localid="249"/>
				<properties ea_type="Association" direction="Unspecified"/>
				<modifiers isRoot="false" isLeaf="false"/>
				<documentation/>
				<appearance linemode="3" linecolor="-1" linewidth="1" seqno="0" headStyle="0" lineStyle="0"/>
				<labels lb="*" rb="1"/>
				<extendedProperties virtualInheritance="0"/>
				<style/>
				<xrefs value="$XREFPROP=$XID={4C4790A8-D60D-4b07-81EC-93E664CF834A}$XID;$NAM=CustomProperties$NAM;$TYP=connector property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isDerived@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={ED27E60E-B56F-4457-ABE5-417D16E8B5CD}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
				<tags/>
			</connector>
			<connector xmi:idref="EAID_0163DA6E_2073_4ab5_8721_A3BE228736E0">
				<source xmi:idref="EAID_86E9893F_8AEA_4493_BD1D_554C280E0A34">
					<model ea_localid="84" type="Class" name="Restriccion"/>
					<role visibility="Public" targetScope="instance"/>
					<type aggregation="none" containment="Unspecified"/>
					<constraints/>
					<modifiers isOrdered="false" changeable="none" isNavigable="false"/>
					<style value="Union=0;Derived=0;AllowDuplicates=0;"/>
					<documentation/>
					<xrefs/>
					<tags/>
				</source>
				<target xmi:idref="EAID_1B36C7BA_F634_4898_879E_D309C09CC6D0">
					<model ea_localid="82" type="Class" name="PoliticaPermisos"/>
					<role visibility="Public" targetScope="instance"/>
					<type aggregation="none" containment="Unspecified"/>
					<constraints/>
					<modifiers isOrdered="false" changeable="none" isNavigable="true"/>
					<style value="Union=0;Derived=0;AllowDuplicates=0;"/>
					<documentation/>
					<xrefs/>
					<tags/>
				</target>
				<model ea_localid="85"/>
				<properties ea_type="Generalization" direction="Source -&gt; Destination"/>
				<documentation/>
				<appearance linemode="3" linecolor="-1" linewidth="1" seqno="0" headStyle="0" lineStyle="0"/>
				<labels/>
				<extendedProperties virtualInheritance="0"/>
				<style/>
				<xrefs value="$XREFPROP=$XID={E202B781-5253-4e13-AF36-6D3C957BDE8C}$XID;$NAM=CustomProperties$NAM;$TYP=connector property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isSubstitutable@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={0163DA6E-2073-4ab5-8721-A3BE228736E0}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
				<tags/>
			</connector>
			<connector xmi:idref="EAID_E9C5BCDE_0BA6_4394_AA09_4B6F7230BEB8">
				<source xmi:idref="EAID_DB6D4F90_8A74_4253_A05F_15E389F9E7BF">
					<model ea_localid="219" type="Class" name="Registro"/>
					<role visibility="Public" targetScope="instance"/>
					<type multiplicity="*" aggregation="none" containment="Unspecified"/>
					<constraints/>
					<modifiers isOrdered="false" changeable="none" isNavigable="false"/>
					<style value="Union=0;Derived=0;AllowDuplicates=0;Owned=0;Navigable=Unspecified;"/>
					<documentation/>
					<xrefs value="$XREFPROP=$XID={EB69ACB9-3292-49a8-9C47-5C536E0DC3FC}$XID;$NAM=CustomProperties$NAM;$TYP=connectorSrcEnd property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isDerivedUnion@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isDerived@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=default@ENDNAME;@TYPE=String@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isReadOnly@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isComposite@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=aggregation@ENDNAME;@TYPE=AggregationKind@ENDTYPE;@VALU=none@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={E9C5BCDE-0BA6-4394-AA09-4B6F7230BEB8}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
					<tags/>
				</source>
				<target xmi:idref="EAID_FE7F224E_CFE5_4b65_955B_7C2F6DA74495">
					<model ea_localid="216" type="Class" name="ProcesoRegistro"/>
					<role visibility="Public" targetScope="instance"/>
					<type multiplicity="1" aggregation="none" containment="Unspecified"/>
					<constraints/>
					<modifiers isOrdered="false" changeable="none" isNavigable="true"/>
					<style value="Union=0;Derived=0;AllowDuplicates=0;Owned=0;Navigable=Unspecified;"/>
					<documentation/>
					<xrefs value="$XREFPROP=$XID={7136FFEA-5C05-47db-BA84-5176E02EA68E}$XID;$NAM=CustomProperties$NAM;$TYP=connectorDestEnd property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isDerivedUnion@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isDerived@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=default@ENDNAME;@TYPE=String@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isReadOnly@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isComposite@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=aggregation@ENDNAME;@TYPE=AggregationKind@ENDTYPE;@VALU=none@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={E9C5BCDE-0BA6-4394-AA09-4B6F7230BEB8}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
					<tags/>
				</target>
				<model ea_localid="252"/>
				<properties ea_type="Association" direction="Unspecified"/>
				<modifiers isRoot="false" isLeaf="false"/>
				<documentation/>
				<appearance linemode="3" linecolor="-1" linewidth="1" seqno="0" headStyle="0" lineStyle="0"/>
				<labels lb="*" rb="1"/>
				<extendedProperties virtualInheritance="0"/>
				<style/>
				<xrefs value="$XREFPROP=$XID={743E185C-F2AC-4ac4-8247-709126F8CD03}$XID;$NAM=CustomProperties$NAM;$TYP=connector property$TYP;$VIS=Public$VIS;$DES=@PROP=@NAME=isDerived@ENDNAME;@TYPE=Boolean@ENDTYPE;@VALU=false@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;$DES;$CLT={E9C5BCDE-0BA6-4394-AA09-4B6F7230BEB8}$CLT;$SUP=&lt;none&gt;$SUP;$ENDXREF;"/>
				<tags/>
			</connector>
		</connectors>
		<diagrams>
			<diagram xmi:id="EAID_831CABF9_1C66_4ed3_8397_D37C5325E163">
				<model package="EAPK_EEB11991_FB33_45bd_A6EB_0C781A55C342" localID="23" owner="EAPK_EEB11991_FB33_45bd_A6EB_0C781A55C342"/>
				<properties name="EstadosDeRegistro" type="Statechart"/>
				<project author="Usuario" version="1.0" created="2014-05-07 10:48:45" modified="2014-05-07 11:22:38"/>
				<style1 value="ShowPrivate=1;ShowProtected=1;ShowPublic=1;HideRelationships=0;Locked=0;Border=1;HighlightForeign=1;PackageContents=1;SequenceNotes=0;ScalePrintImage=0;PPgs.cx=1;PPgs.cy=1;DocSize.cx=791;DocSize.cy=1043;ShowDetails=0;Orientation=P;Zoom=120;ShowTags=0;OpParams=1;VisibleAttributeDetail=0;ShowOpRetType=1;ShowIcons=1;CollabNums=0;HideProps=0;ShowReqs=0;ShowCons=0;PaperSize=1;HideParents=0;UseAlias=0;HideAtts=0;HideOps=0;HideStereo=0;HideElemStereo=0;ShowTests=0;ShowMaint=0;ConnectorNotation=UML 2.1;ExplicitNavigability=0;AdvancedElementProps=1;AdvancedFeatureProps=1;AdvancedConnectorProps=1;ShowNotes=0;SuppressBrackets=0;SuppConnectorLabels=0;PrintPageHeadFoot=0;ShowAsList=0;"/>
				<style2 value="ExcludeRTF=0;DocAll=0;HideQuals=0;AttPkg=1;ShowTests=0;ShowMaint=0;SuppressFOC=1;MatrixActive=0;SwimlanesActive=1;MatrixLineWidth=1;MatrixLocked=0;TConnectorNotation=UML 2.1;TExplicitNavigability=0;AdvancedElementProps=1;AdvancedFeatureProps=1;AdvancedConnectorProps=1;ProfileData=;MDGDgm=;STBLDgm=;ShowNotes=0;VisibleAttributeDetail=0;ShowOpRetType=1;SuppressBrackets=0;SuppConnectorLabels=0;PrintPageHeadFoot=0;ShowAsList=0;"/>
				<swimlanes value="locked=false;orientation=0;width=0;inbar=false;names=false;color=0;bold=false;fcol=0;;cls=0;"/>
				<matrixitems value="locked=false;matrixactive=false;swimlanesactive=true;width=1;"/>
				<elements>
					<element geometry="Left=281;Top=396;Right=375;Bottom=426;" subject="EAID_1AE2FF85_8FF1_4143_8284_91850224D198" seqno="1" style="DUID=B777AE74;"/>
					<element geometry="Left=90;Top=444;Right=196;Bottom=470;" subject="EAID_7657442C_DE12_4088_8D5A_07ED97EAFA3A" seqno="2" style="DUID=96089564;"/>
					<element geometry="Left=716;Top=467;Right=755;Bottom=506;" subject="EAID_12FED14F_9189_40f8_862E_E043DB5DFBA7" seqno="3" style="DUID=50095269;LBL=CX=12:CY=14:OX=0:OY=0:HDN=0:BLD=0:ITA=0:UND=0:CLR=-1:ALN=0:ALT=0:ROT=0;"/>
					<element geometry="Left=495;Top=473;Right=604;Bottom=499;" subject="EAID_70891F23_E1FA_45d0_8AD6_46B7EE097BC9" seqno="4" style="DUID=56FDE3EE;"/>
					<element geometry="Left=396;Top=272;Right=491;Bottom=307;" subject="EAID_78010233_2D3A_4cfe_A022_B20739EB3AF3" seqno="5" style="DUID=4A34A494;"/>
					<element geometry="Left=87;Top=347;Right=202;Bottom=382;" subject="EAID_D827D872_BC80_471d_A2EC_1EB9D0E0138F" seqno="6" style="DUID=82EFBE58;"/>
					<element geometry="Left=93;Top=269;Right=194;Bottom=295;" subject="EAID_D9C729D7_B811_4780_9213_0A6234D11014" seqno="7" style="DUID=22ED3EF0;"/>
					<element geometry="Left=87;Top=188;Right=198;Bottom=216;" subject="EAID_884F1105_1CFE_430a_AB72_8CAFF05AE218" seqno="8" style="DUID=AD9D9FD6;"/>
					<element geometry="Left=507;Top=190;Right=593;Bottom=221;" subject="EAID_972E8417_3864_40a0_89D4_672213108D9C" seqno="9" style="DUID=DEE5AFA2;"/>
					<element geometry="Left=288;Top=146;Right=396;Bottom=172;" subject="EAID_FB3D8A23_8FA3_454f_BBF4_4A2D142C12D5" seqno="10" style="DUID=98407FF2;"/>
					<element geometry="Left=292;Top=54;Right=392;Bottom=80;" subject="EAID_981FFBFC_C5C7_4c71_AA33_38DFE2C83CA2" seqno="11" style="DUID=F134DE6F;"/>
					<element geometry="Left=192;Top=17;Right=212;Bottom=37;" subject="EAID_E5D1BC6E_2870_4f87_9B74_2AF74422294E" seqno="12" style="DUID=BCEEA3DF;LBL=CX=24:CY=14:OX=0:OY=0:HDN=0:BLD=0:ITA=0:UND=0:CLR=-1:ALN=0:ALT=0:ROT=0;"/>
					<element geometry="SX=0;SY=0;EX=0;EY=0;EDGE=2;$LLB=;LLT=;LMT=CX=83:CY=14:OX=-76:OY=14:HDN=0:BLD=0:ITA=0:UND=0:CLR=-1:ALN=0:DIR=0:ROT=0;LMB=;LRT=;LRB=;IRHS=;ILHS=;Path=327:-456$;" subject="EAID_E9B47ACC_759A_47a7_A639_A35A3738F6A8" style="Mode=3;EOID=B777AE74;SOID=96089564;Color=-1;LWidth=1;Hidden=0;"/>
					<element geometry="SX=-1;SY=1;EX=0;EY=0;EDGE=2;$LLB=;LLT=;LMT=CX=75:CY=14:OX=-67:OY=-16:HDN=0:BLD=0:ITA=0:UND=0:CLR=-1:ALN=0:DIR=0:ROT=0;LMB=;LRT=;LRB=;IRHS=;ILHS=;Path=549:-157$;" subject="EAID_8987C57A_1043_4e5b_B36F_4EF32B3442A6" style="Mode=3;EOID=DEE5AFA2;SOID=98407FF2;Color=-1;LWidth=1;Hidden=0;"/>
					<element geometry="SX=0;SY=0;EX=0;EY=0;EDGE=4;$LLB=;LLT=;LMT=CX=88:CY=14:OX=54:OY=-16:HDN=0:BLD=0:ITA=0:UND=0:CLR=-1:ALN=0:DIR=0:ROT=0;LMB=;LRT=;LRB=;IRHS=;ILHS=;Path=142:-159$;" subject="EAID_CCFA1A8F_EAFF_4caf_B954_16F979052E28" style="Mode=3;EOID=AD9D9FD6;SOID=98407FF2;Color=-1;LWidth=1;Hidden=0;"/>
					<element geometry="SX=0;SY=0;EX=0;EY=0;EDGE=3;$LLB=;LLT=;LMT=CX=79:CY=14:OX=0:OY=0:HDN=0:BLD=0:ITA=0:UND=0:CLR=-1:ALN=0:DIR=0:ROT=0;LMB=;LRT=;LRB=;IRHS=;ILHS=;Path=;" subject="EAID_44A9372D_7C5B_42bc_9F30_7D1051C353E9" style="Mode=3;EOID=22ED3EF0;SOID=AD9D9FD6;Color=-1;LWidth=1;Hidden=0;"/>
					<element geometry="SX=-2;SY=-4;EX=-46;EY=2;EDGE=2;$LLB=;LLT=;LMT=CX=80:CY=14:OX=0:OY=0:HDN=0:BLD=0:ITA=0:UND=0:CLR=-1:ALN=0:DIR=0:ROT=0;LMB=;LRT=;LRB=;IRHS=;ILHS=;Path=;" subject="EAID_BC69529B_2F21_4228_ABDE_5C52B6F6FD31" style="Mode=3;EOID=4A34A494;SOID=22ED3EF0;Color=-1;LWidth=1;Hidden=0;"/>
					<element geometry="SX=4;SY=6;EX=0;EY=0;EDGE=2;$LLB=;LLT=;LMT=CX=76:CY=14:OX=45:OY=-16:HDN=0:BLD=0:ITA=0:UND=0:CLR=-1:ALN=0:DIR=0:ROT=0;LMB=;LRT=;LRB=;IRHS=;ILHS=;Path=220:-275$220:-204$;" subject="EAID_6EECE0B9_DF1F_4fe0_85C9_22A3ACDDFBEC" style="Mode=3;EOID=DEE5AFA2;SOID=22ED3EF0;Color=-1;LWidth=1;Hidden=0;"/>
					<element geometry="SX=0;SY=0;EX=0;EY=0;EDGE=3;$LLB=;LLT=;LMT=CX=72:CY=14:OX=-1:OY=3:HDN=0:BLD=0:ITA=0:UND=0:CLR=-1:ALN=0:DIR=0:ROT=0;LMB=;LRT=;LRB=;IRHS=;ILHS=;Path=;" subject="EAID_860BD803_A662_4404_9C3F_6524CA44230E" style="Mode=3;EOID=82EFBE58;SOID=22ED3EF0;Color=-1;LWidth=1;Hidden=0;"/>
					<element geometry="SX=0;SY=0;EX=0;EY=0;EDGE=2;$LLB=;LLT=;LMT=CX=64:CY=14:OX=-41:OY=-20:HDN=0:BLD=0:ITA=0:UND=0:CLR=-1:ALN=0:DIR=0:ROT=0;LMB=;LRT=;LRB=;IRHS=;ILHS=;Path=341:-27$;" subject="EAID_BC6E9103_4C16_4489_94EC_A7FB9F442EB0" style="Mode=3;EOID=F134DE6F;SOID=BCEEA3DF;Color=-1;LWidth=1;Hidden=0;"/>
					<element geometry="SX=0;SY=0;EX=0;EY=0;EDGE=2;$LLB=;LLT=;LMT=CX=93:CY=14:OX=-70:OY=-18:HDN=0:BLD=0:ITA=0:UND=0:CLR=-1:ALN=0:DIR=0:ROT=0;LMB=;LRT=;LRB=;IRHS=;ILHS=;Path=327:-363$;" subject="EAID_2D1D3EDF_CBE7_4c77_AF90_162E8F262A8A" style="Mode=3;EOID=B777AE74;SOID=82EFBE58;Color=-1;LWidth=1;Hidden=0;"/>
					<element geometry="SX=0;SY=0;EX=0;EY=0;EDGE=3;$LLB=;LLT=;LMT=CX=69:CY=14:OX=0:OY=0:HDN=0:BLD=0:ITA=0:UND=0:CLR=-1:ALN=0:DIR=0:ROT=0;LMB=;LRT=;LRB=;IRHS=;ILHS=;Path=;" subject="EAID_C721A870_8233_408f_A655_7404C190AF29" style="Mode=3;EOID=98407FF2;SOID=F134DE6F;Color=-1;LWidth=1;Hidden=0;"/>
					<element geometry="SX=0;SY=0;EX=0;EY=0;EDGE=3;$LLB=;LLT=;LMT=CX=75:CY=14:OX=0:OY=0:HDN=0:BLD=0:ITA=0:UND=0:CLR=-1:ALN=0:DIR=0:ROT=0;LMB=;LRT=;LRB=;IRHS=;ILHS=;Path=143:-486$;" subject="EAID_0D7DF320_588B_4285_9CFC_B22BE9070196" style="Mode=3;EOID=56FDE3EE;SOID=96089564;Color=-1;LWidth=1;Hidden=0;"/>
					<element geometry="SX=0;SY=0;EX=0;EY=0;EDGE=3;$LLB=;LLT=;LMT=CX=83:CY=14:OX=-45:OY=-89:HDN=0:BLD=0:ITA=0:UND=0:CLR=-1:ALN=0:DIR=0:ROT=0;LMB=;LRT=;LRB=;IRHS=;ILHS=;Path=;" subject="EAID_59238AC5_943A_4ff5_8DF3_89BDC747DFA3" style="Mode=3;EOID=56FDE3EE;SOID=DEE5AFA2;Color=-1;LWidth=1;Hidden=0;"/>
					<element geometry="SX=0;SY=0;EX=-35;EY=12;EDGE=3;$LLB=;LLT=;LMT=CX=90:CY=14:OX=-18:OY=20:HDN=0:BLD=0:ITA=0:UND=0:CLR=-1:ALN=0:DIR=0:ROT=0;LMB=;LRT=;LRB=;IRHS=;ILHS=;Path=442:-342$513:-342$;" subject="EAID_7BA0C9B1_5756_4307_B516_5DC08F64B959" style="Mode=3;EOID=56FDE3EE;SOID=4A34A494;Color=-1;LWidth=1;Hidden=0;"/>
					<element geometry="SX=24;SY=-13;EX=14;EY=0;EDGE=3;$LLB=;LLT=;LMT=CX=91:CY=14:OX=-31:OY=0:HDN=0:BLD=0:ITA=0:UND=0:CLR=-1:ALN=0:DIR=0:ROT=0;LMB=;LRT=;LRB=;IRHS=;ILHS=;Path=574:-410$;" subject="EAID_0FDFE708_788A_4682_BA84_0DD32DF1B817" style="Mode=3;EOID=B777AE74;SOID=DEE5AFA2;Color=-1;LWidth=1;Hidden=0;"/>
					<element geometry="SX=19;SY=2;EX=5;EY=-11;EDGE=1;$LLB=;LLT=;LMT=CX=83:CY=14:OX=17:OY=-35:HDN=0:BLD=0:ITA=0:UND=0:CLR=-1:ALN=0:DIR=0:ROT=0;LMB=;LRT=;LRB=;IRHS=;ILHS=;Path=;" subject="EAID_DA59AAB4_104A_4c67_AB6B_95FDD7984FE4" style="Mode=3;EOID=98407FF2;SOID=B777AE74;Color=-1;LWidth=1;Hidden=0;"/>
					<element geometry="SX=0;SY=0;EX=0;EY=0;EDGE=2;$LLB=;LLT=;LMT=CX=82:CY=14:OX=0:OY=0:HDN=0:BLD=0:ITA=0:UND=0:CLR=-1:ALN=0:DIR=0:ROT=0;LMB=;LRT=;LRB=;IRHS=;ILHS=;Path=;" subject="EAID_8A2E76C0_5FBB_471b_B660_B07EC00F7B7C" style="Mode=3;EOID=50095269;SOID=56FDE3EE;Color=-1;LWidth=1;Hidden=0;"/>
					<element geometry="SX=0;SY=0;EX=0;EY=0;EDGE=3;$LLB=;LLT=;LMT=CX=80:CY=14:OX=0:OY=0:HDN=0:BLD=0:ITA=0:UND=0:CLR=-1:ALN=0:DIR=0:ROT=0;LMB=;LRT=;LRB=;IRHS=;ILHS=;Path=;" subject="EAID_9141B6A6_E897_402f_91D2_3161C93617D7" style="Mode=3;EOID=96089564;SOID=82EFBE58;Color=-1;LWidth=1;Hidden=0;"/>
				</elements>
			</diagram>
			<diagram xmi:id="EAID_F8B5ED15_2E83_4eea_8839_A69430C035BB">
				<model package="EAPK_BCF1D6BC_7ACD_4070_9C41_C233E19E2A28" localID="19" owner="EAPK_BCF1D6BC_7ACD_4070_9C41_C233E19E2A28"/>
				<properties name="Frameworks" type="Logical"/>
				<project author="Valued Customer" version="1.0" created="2005-11-20 00:00:00" modified="2006-01-11 00:00:00"/>
				<style1 value="ShowPrivate=1;ShowProtected=1;ShowPublic=1;HideRelationships=0;Locked=0;Border=0;HighlightForeign=0;PackageContents=0;SequenceNotes=0;ScalePrintImage=0;PPgs.cx=0;PPgs.cy=0;DocSize.cx=795;DocSize.cy=1138;ShowDetails=0;Orientation=P;Zoom=100;ShowTags=0;OpParams=1;VisibleAttributeDetail=0;ShowOpRetType=1;ShowIcons=1;CollabNums=0;HideProps=0;ShowReqs=0;ShowCons=0;PaperSize=9;HideParents=0;UseAlias=0;HideAtts=0;HideOps=0;HideStereo=0;HideElemStereo=0;ShowTests=0;ShowMaint=0;ConnectorNotation=UML 2.1;ExplicitNavigability=0;AdvancedElementProps=1;AdvancedFeatureProps=1;AdvancedConnectorProps=1;ShowNotes=0;SuppressBrackets=0;SuppConnectorLabels=0;PrintPageHeadFoot=0;ShowAsList=0;"/>
				<style2 value="ExcludeRTF=0;DocAll=0;HideQuals=0;AttPkg=1;ShowTests=0;ShowMaint=0;Layout=;SuppressFOC=0;MatrixActive=0;SwimlanesActive=1;MatrixLineWidth=1;MatrixLocked=0;TConnectorNotation=UML 2.1;TExplicitNavigability=0;AdvancedElementProps=1;AdvancedFeatureProps=1;AdvancedConnectorProps=1;ProfileData=;MDGDgm=;STBLDgm=;ShowNotes=0;VisibleAttributeDetail=0;ShowOpRetType=1;SuppressBrackets=0;SuppConnectorLabels=0;PrintPageHeadFoot=0;"/>
				<swimlanes value="locked=false;orientation=0;width=0;inbar=false;names=false;color=0;bold=false;fcol=0;;cls=0;"/>
				<matrixitems value="locked=false;matrixactive=false;swimlanesactive=true;width=1;"/>
				<elements>
					<element geometry="Left=73;Top=67;Right=319;Bottom=165;" subject="EAID_2BAD0B4C_4BAE_4df4_BC77_DBCAFA2D1009" seqno="1" style="DUID=B5CE793B;LCol=8355711;BCol=14745599;BFol=2631720;LWth=1;"/>
				</elements>
			</diagram>
			<diagram xmi:id="EAID_784F8287_3EC3_4ede_9DC7_4A1E9098F04F">
				<model package="EAPK_251C3D9E_572F_489f_A441_FE800ED72348" localID="3" owner="EAPK_251C3D9E_572F_489f_A441_FE800ED72348"/>
				<properties name="RegistroGenerico" type="Logical"/>
				<project author="Marcelo" version="1.0" created="2005-11-19 00:00:00" modified="2014-04-25 10:32:34"/>
				<style1 value="ShowPrivate=1;ShowProtected=1;ShowPublic=1;HideRelationships=0;Locked=0;Border=0;HighlightForeign=0;PackageContents=1;SequenceNotes=0;ScalePrintImage=0;PPgs.cx=0;PPgs.cy=0;DocSize.cx=1130;DocSize.cy=795;ShowDetails=0;Orientation=L;Zoom=100;ShowTags=0;OpParams=1;VisibleAttributeDetail=0;ShowOpRetType=1;ShowIcons=1;CollabNums=0;HideProps=0;ShowReqs=0;ShowCons=0;PaperSize=9;HideParents=0;UseAlias=0;HideAtts=0;HideOps=0;HideStereo=0;HideElemStereo=0;ShowTests=0;ShowMaint=0;ConnectorNotation=UML 2.0;ExplicitNavigability=0;AdvancedElementProps=1;AdvancedFeatureProps=1;AdvancedConnectorProps=1;ShowNotes=0;SuppressBrackets=0;SuppConnectorLabels=0;PrintPageHeadFoot=0;ShowAsList=0;"/>
				<style2 value="ExcludeRTF=0;DocAll=0;HideQuals=0;AttPkg=1;ShowTests=0;ShowMaint=0;SuppressFOC=1;MatrixActive=0;SwimlanesActive=1;MatrixLineWidth=1;MatrixLocked=0;TConnectorNotation=UML 2.0;TExplicitNavigability=0;AdvancedElementProps=1;AdvancedFeatureProps=1;AdvancedConnectorProps=1;ProfileData=;MDGDgm=;STBLDgm=;ShowNotes=0;VisibleAttributeDetail=0;ShowOpRetType=1;SuppressBrackets=0;SuppConnectorLabels=0;PrintPageHeadFoot=0;ShowAsList=0;"/>
				<swimlanes value="locked=false;orientation=0;width=0;inbar=false;names=false;color=0;bold=false;fcol=0;;cls=0;"/>
				<matrixitems value="locked=false;matrixactive=false;swimlanesactive=true;width=1;"/>
				<elements>
					<element geometry="Left=1098;Top=372;Right=1188;Bottom=442;" subject="EAID_7B8740F5_412B_4150_91DF_8C3A06A3C5FB" seqno="1" style="DUID=03202ABF;"/>
					<element geometry="Left=1099;Top=512;Right=1189;Bottom=582;" subject="EAID_E0F984DE_07AC_408f_AC07_AD83323C322D" seqno="2" style="DUID=99ACD5A9;"/>
					<element geometry="Left=884;Top=373;Right=992;Bottom=443;" subject="EAID_6CB52BAE_49D2_4ea3_81BE_B04CC15BD9AB" seqno="3" style="DUID=FB9AA145;"/>
					<element geometry="Left=685;Top=135;Right=817;Bottom=205;" subject="EAID_AFEEBDB2_0B99_427c_BAC5_50B68B2A1C48" seqno="4" style="DUID=55C2AD8C;"/>
					<element geometry="Left=985;Top=91;Right=1075;Bottom=161;" subject="EAID_936272D8_AEEF_4b92_B5F6_55FD046C216C" seqno="5" style="DUID=7E7479C7;"/>
					<element geometry="Left=843;Top=234;Right=1038;Bottom=322;" subject="EAID_DB6D4F90_8A74_4253_A05F_15E389F9E7BF" seqno="6" style="DUID=1A48C3D7;"/>
					<element geometry="Left=446;Top=380;Right=553;Bottom=450;" subject="EAID_FE7F224E_CFE5_4b65_955B_7C2F6DA74495" seqno="7" style="DUID=B23DDC2A;"/>
					<element geometry="Left=589;Top=240;Right=679;Bottom=310;" subject="EAID_1E20EBB1_2E74_4f5a_9D4F_ABCBC4FA9468" seqno="8" style="DUID=D2B839D3;"/>
					<element geometry="Left=234;Top=365;Right=344;Bottom=453;" subject="EAID_D177CECD_84CC_4aaf_990C_380C7A16A55B" seqno="9" style="DUID=FCA96C30;"/>
					<element geometry="Left=36;Top=350;Right=192;Bottom=438;" subject="EAID_38C8A964_D4EB_4cd2_A707_757CDE9EC9EC" seqno="10" style="DUID=AB11E0CE;"/>
					<element geometry="Left=654;Top=45;Right=755;Bottom=115;" subject="EAID_494A45F6_51BE_4989_9E35_69DB61EC1EB4" seqno="11" style="DUID=E43F2D6C;ImageID=0;"/>
					<element geometry="Left=56;Top=16;Right=132;Bottom=47;" subject="EAID_F3421EFA_73DA_4666_A102_BDC5DE63DB87" seqno="12" style="DUID=C87CDBB1;ImageID=0;"/>
					<element geometry="Left=291;Top=167;Right=381;Bottom=237;" subject="EAID_22B30324_7B92_4f0f_8E5B_235CC3C311DB" seqno="13" style="DUID=F51E55B6;"/>
					<element geometry="Left=45;Top=597;Right=135;Bottom=667;" subject="EAID_86E9893F_8AEA_4493_BD1D_554C280E0A34" seqno="14" style="DUID=51E2CF89;ImageID=0;"/>
					<element geometry="Left=186;Top=598;Right=276;Bottom=668;" subject="EAID_6C8173D9_7C14_443b_BA64_2EF4ECB491A4" seqno="15" style="DUID=C1B602CB;ImageID=0;"/>
					<element geometry="Left=115;Top=472;Right=205;Bottom=542;" subject="EAID_1B36C7BA_F634_4898_879E_D309C09CC6D0" seqno="16" style="DUID=378E719B;ImageID=0;"/>
					<element geometry="Left=549;Top=599;Right=639;Bottom=670;" subject="EAID_E6107410_9614_449a_8D2D_E93A9B5DF687" seqno="17" style="DUID=0F01E6D2;ImageID=0;"/>
					<element geometry="Left=437;Top=600;Right=527;Bottom=670;" subject="EAID_CEF9C3D7_F0C2_482e_B16B_A3CC89B10464" seqno="18" style="DUID=5F580507;ImageID=0;"/>
					<element geometry="Left=467;Top=470;Right=605;Bottom=540;" subject="EAID_3162AFD6_616D_4336_AE4C_34EB9D1B3488" seqno="19" style="DUID=6A8B8B70;ImageID=0;"/>
					<element geometry="Left=448;Top=217;Right=544;Bottom=331;" subject="EAID_45EC5E8D_6B18_47cd_89C8_75BCE1502DE1" seqno="20" style="DUID=CB2B6B87;ImageID=0;"/>
					<element geometry="Left=345;Top=45;Right=511;Bottom=159;" subject="EAID_BE145EF8_3054_4b41_ABF8_23A90BB5F4D2" seqno="21" style="DUID=681ACACE;"/>
					<element geometry="Left=290;Top=268;Right=400;Bottom=338;" subject="EAID_D6358D5E_863D_44a7_96D9_9C3E91364044" seqno="22" style="DUID=FAD5DA1A;ImageID=0;"/>
					<element geometry="Left=58;Top=240;Right=168;Bottom=310;" subject="EAID_FEB7F827_B053_4f45_B04C_FD5ABDACF252" seqno="23" style="DUID=00CC3393;ImageID=0;"/>
					<element geometry="Left=60;Top=86;Right=173;Bottom=156;" subject="EAID_912BC6F8_FB18_4416_9432_1AD48775676D" seqno="24" style="DUID=0EF5A938;"/>
					<element geometry="Left=40;Top=64;Right=192;Bottom=324;" subject="EAID_A8C29E4A_1C95_4866_8B51_7893E2A0FB8D" seqno="25" style="DUID=4ECFF9C1;ImageID=0;"/>
					<element geometry="Left=40;Top=461;Right=652;Bottom=674;" subject="EAID_7167D0FA_2389_46f5_9449_43C1F9F12354" seqno="26" style="DUID=126CEBE9;ImageID=0;"/>
					<element geometry="SX=0;SY=0;EX=-66;EY=17;EDGE=3;$LLB=CX=5:CY=14:OX=-20:OY=1:HDN=0:BLD=0:ITA=0:UND=0:CLR=-1:ALN=0:DIR=0:ROT=0;LLT=;LMT=CX=108:CY=14:OX=-46:OY=-2:HDN=0:BLD=0:ITA=0:UND=0:CLR=-1:ALN=0:DIR=0:ROT=0;LMB=;LRT=;LRB=CX=5:CY=14:OX=-17:OY=-3:HDN=0:BLD=0:ITA=0:UND=0:CLR=-1:ALN=0:DIR=0:ROT=0;IRHS=;ILHS=;Path=345:-359$405:-359$405:-488$;" subject="EAID_981508D0_5373_4349_A263_5D78463468D6" style="Mode=3;EOID=6A8B8B70;SOID=FAD5DA1A;Color=-1;LWidth=1;Hidden=0;"/>
					<element geometry="SX=-25;SY=0;EX=-28;EY=0;EDGE=1;$LLB=;LLT=;LMT=CX=29:CY=14:OX=-1:OY=26:HDN=0:BLD=0:ITA=0:UND=0:CLR=-1:ALN=0:DIR=0:ROT=0;LMB=;LRT=;LRB=CX=7:CY=14:OX=0:OY=0:HDN=0:BLD=0:ITA=0:UND=0:CLR=-1:ALN=0:DIR=0:ROT=0;IRHS=;ILHS=;Path=;" subject="EAID_0C2D7E9D_2E1A_4eaf_A206_17D849AAE750" style="Mode=3;EOID=0EF5A938;SOID=00CC3393;Color=-1;LWidth=1;Hidden=0;"/>
					<element geometry="SX=0;SY=0;EX=-1;EY=0;EDGE=1;$LLB=;LLT=;LMT=;LMB=;LRT=;LRB=;IRHS=;ILHS=;Path=593:-575$535:-575$;" subject="EAID_DE36CD73_D70E_41e2_90F5_F3E9C3CF0B62" style="Mode=3;EOID=6A8B8B70;SOID=0F01E6D2;Color=-1;LWidth=1;Hidden=0;"/>
					<element geometry="SX=0;SY=0;EX=-53;EY=43;EDGE=2;$LLB=CX=7:CY=14:OX=0:OY=-26:HDN=0:BLD=0:ITA=0:UND=0:CLR=-1:ALN=0:DIR=0:ROT=0;LLT=;LMT=;LMB=;LRT=;LRB=CX=5:CY=14:OX=0:OY=0:HDN=0:BLD=0:ITA=0:UND=0:CLR=-1:ALN=0:DIR=0:ROT=0;IRHS=;ILHS=;Path=887:-170$;" subject="EAID_C7788AF2_4D96_46cd_8B26_96CD81D95752" style="Mode=3;EOID=1A48C3D7;SOID=55C2AD8C;Color=-1;LWidth=1;Hidden=0;"/>
					<element geometry="SX=-2;SY=-43;EX=-1;EY=31;EDGE=3;$LLB=CX=7:CY=14:OX=0:OY=0:HDN=0:BLD=0:ITA=0:UND=0:CLR=-1:ALN=0:DIR=0:ROT=0;LLT=;LMT=;LMB=;LRT=;LRB=CX=7:CY=14:OX=0:OY=0:HDN=0:BLD=0:ITA=0:UND=0:CLR=-1:ALN=0:DIR=0:ROT=0;IRHS=;ILHS=;Path=;" subject="EAID_FF0A3986_CAC6_4a7c_8BF8_8566749F83C7" style="Mode=3;EOID=FB9AA145;SOID=1A48C3D7;Color=-1;LWidth=1;Hidden=0;"/>
					<element geometry="SX=0;SY=0;EX=0;EY=0;EDGE=4;$LLB=;LLT=;LMT=CX=79:CY=27:OX=0:OY=0:HDN=0:BLD=0:ITA=0:UND=0:CLR=-1:ALN=0:DIR=0:ROT=0;LMB=;LRT=;LRB=;IRHS=;ILHS=;Path=;" subject="EAID_A0B1B089_F217_4d63_9D88_FACF60C1156B" style="Mode=3;EOID=378E719B;SOID=6A8B8B70;Color=-1;LWidth=1;Hidden=0;"/>
					<element geometry="SX=3;SY=-34;EX=-6;EY=34;EDGE=3;$LLB=CX=7:CY=14:OX=-4:OY=-4:HDN=0:BLD=0:ITA=0:UND=0:CLR=-1:ALN=0:DIR=0:ROT=0;LLT=;LMT=;LMB=;LRT=;LRB=CX=7:CY=14:OX=-4:OY=5:HDN=0:BLD=0:ITA=0:UND=0:CLR=-1:ALN=0:DIR=0:ROT=0;IRHS=;ILHS=;Path=;" subject="EAID_6AF2F907_A5DB_47ad_B51F_194EF29CA96D" style="Mode=3;EOID=FAD5DA1A;SOID=F51E55B6;Color=-1;LWidth=1;Hidden=0;"/>
					<element geometry="SX=0;SY=0;EX=0;EY=0;EDGE=4;$LLB=;LLT=;LMT=;LMB=;LRT=;LRB=;IRHS=;ILHS=;Path=12:-31$12:-120$;" subject="EAID_309B3175_69C9_4aea_AAD2_56C20D8ABBB4" style="Mode=3;EOID=0EF5A938;SOID=C87CDBB1;Color=-1;LWidth=1;Hidden=0;"/>
					<element geometry="SX=0;SY=0;EX=1;EY=1;EDGE=4;$LLB=CX=7:CY=14:OX=-8:OY=-22:HDN=0:BLD=0:ITA=0:UND=0:CLR=-1:ALN=0:DIR=0:ROT=0;LLT=;LMT=;LMB=;LRT=;LRB=CX=5:CY=14:OX=-16:OY=1:HDN=0:BLD=0:ITA=0:UND=0:CLR=-1:ALN=0:DIR=0:ROT=0;IRHS=;ILHS=;Path=634:-169$;" subject="EAID_E9AED687_E073_42f0_9721_0034CE06B021" style="Mode=3;EOID=D2B839D3;SOID=55C2AD8C;Color=-1;LWidth=1;Hidden=0;"/>
					<element geometry="SX=0;SY=0;EX=0;EY=0;EDGE=2;$LLB=CX=7:CY=14:OX=0:OY=0:HDN=0:BLD=0:ITA=0:UND=0:CLR=-1:ALN=0:DIR=0:ROT=0;LLT=;LMT=;LMB=;LRT=;LRB=CX=5:CY=14:OX=0:OY=0:HDN=0:BLD=0:ITA=0:UND=0:CLR=-1:ALN=0:DIR=0:ROT=0;IRHS=;ILHS=;Path=;" subject="EAID_AFD12064_D744_416c_9929_463B66BB4502" style="Mode=3;EOID=03202ABF;SOID=FB9AA145;Color=-1;LWidth=1;Hidden=0;"/>
					<element geometry="SX=-5;SY=-22;EX=-54;EY=6;EDGE=2;$LLB=CX=5:CY=14:OX=0:OY=0:HDN=0:BLD=0:ITA=0:UND=0:CLR=-1:ALN=0:DIR=0:ROT=0;LLT=;LMT=CX=59:CY=40:OX=58:OY=-6:HDN=0:BLD=0:ITA=0:UND=0:CLR=-1:ALN=0:DIR=0:ROT=0;LMB=;LRT=;LRB=CX=5:CY=14:OX=0:OY=0:HDN=0:BLD=0:ITA=0:UND=0:CLR=-1:ALN=0:DIR=0:ROT=0;IRHS=;ILHS=;Path=;" subject="EAID_3E1AE3AB_6C76_4ffb_A619_DDBCBFB6A6B0" style="Mode=3;EOID=FAD5DA1A;SOID=00CC3393;Color=-1;LWidth=1;Hidden=0;"/>
					<element geometry="SX=1;SY=17;EX=1;EY=11;EDGE=4;$LLB=;LLT=;LMT=;LMB=;LRT=;LRB=CX=7:CY=14:OX=0:OY=0:HDN=0:BLD=0:ITA=0:UND=0:CLR=-1:ALN=0:DIR=0:ROT=0;IRHS=;ILHS=;Path=252:-84$252:-263$;" subject="EAID_96A42E29_350E_43ea_9445_328772D3D3C1" style="Mode=3;EOID=00CC3393;SOID=681ACACE;Color=-1;LWidth=1;Hidden=0;"/>
					<element geometry="SX=1;SY=34;EX=-1;EY=0;EDGE=1;$LLB=;LLT=;LMT=;LMB=;LRT=;LRB=;IRHS=;ILHS=;Path=482:-575$535:-575$;" subject="EAID_14CB2FEB_3D57_41cf_91E5_0FB13B6F6CE4" style="Mode=3;EOID=6A8B8B70;SOID=5F580507;Color=-1;LWidth=1;Hidden=0;"/>
					<element geometry="SX=25;SY=0;EX=22;EY=0;EDGE=1;$LLB=;LLT=;LMT=CX=43:CY=14:OX=0:OY=0:HDN=0:BLD=0:ITA=0:UND=0:CLR=-1:ALN=0:DIR=0:ROT=0;LMB=;LRT=;LRB=CX=7:CY=14:OX=0:OY=0:HDN=0:BLD=0:ITA=0:UND=0:CLR=-1:ALN=0:DIR=0:ROT=0;IRHS=;ILHS=;Path=;" subject="EAID_6BBF6416_9370_4de1_A9F1_8618110BF8CC" style="Mode=3;EOID=0EF5A938;SOID=00CC3393;Color=-1;LWidth=1;Hidden=0;"/>
					<element geometry="SX=0;SY=0;EX=0;EY=0;EDGE=3;$LLB=CX=7:CY=14:OX=0:OY=0:HDN=0:BLD=0:ITA=0:UND=0:CLR=-1:ALN=0:DIR=0:ROT=0;LLT=;LMT=;LMB=;LRT=;LRB=CX=5:CY=14:OX=0:OY=0:HDN=0:BLD=0:ITA=0:UND=0:CLR=-1:ALN=0:DIR=0:ROT=0;IRHS=;ILHS=;Path=;" subject="EAID_9B5A4EF9_D429_4825_8D1D_169C46B7DE57" style="Mode=3;EOID=99ACD5A9;SOID=03202ABF;Color=-1;LWidth=1;Hidden=0;"/>
					<element geometry="SX=0;SY=0;EX=0;EY=0;SCME=1;SCTR=1;EDGE=1;SCTR.LEFT=205;SCTR.TOP=-384;SCTR.RIGHT=242;SCTR.BOTTOM=-340;$LLB=;LLT=CX=7:CY=14:OX=12:OY=-2:HDN=0:BLD=0:ITA=0:UND=0:CLR=-1:ALN=0:DIR=0:ROT=0;LMT=;LMB=;LRT=CX=5:CY=14:OX=-17:OY=4:HDN=0:BLD=0:ITA=0:UND=0:CLR=-1:ALN=0:DIR=0:ROT=0;LRB=;IRHS=;ILHS=;Path=242:-365$242:-340$205:-340$205:-384$234:-384$;" subject="EAID_D27CC9E9_DAE1_4e24_AD83_A04C4844AD24" style="Mode=3;EOID=FCA96C30;SOID=FCA96C30;Color=-1;LWidth=1;Hidden=0;"/>
					<element geometry="SX=0;SY=0;EX=0;EY=0;EDGE=1;$LLB=;LLT=;LMT=;LMB=;LRT=;LRB=;IRHS=;ILHS=;Path=89:-574$158:-574$;" subject="EAID_0163DA6E_2073_4ab5_8721_A3BE228736E0" style="Mode=3;EOID=378E719B;SOID=51E2CF89;Color=-1;LWidth=1;Hidden=0;"/>
					<element geometry="SX=0;SY=0;EX=0;EY=0;EDGE=1;$LLB=;LLT=;LMT=;LMB=;LRT=;LRB=;IRHS=;ILHS=;Path=230:-574$158:-574$;" subject="EAID_A580BC3B_9F70_411f_BE46_97C7D71D18A8" style="Mode=3;EOID=378E719B;SOID=C1B602CB;Color=-1;LWidth=1;Hidden=0;"/>
					<element geometry="SX=0;SY=0;EX=1;EY=-34;EDGE=1;$LLB=;LLT=;LMT=;LMB=;LRT=;LRB=CX=5:CY=14:OX=0:OY=0:HDN=0:BLD=0:ITA=0:UND=0:CLR=-1:ALN=0:DIR=0:ROT=0;IRHS=;ILHS=;Path=;" subject="EAID_6E8E542A_6A3D_44fd_A414_02AC36303C2A" style="Mode=3;EOID=00CC3393;SOID=AB11E0CE;Color=-1;LWidth=1;Hidden=0;"/>
					<element geometry="SX=-54;SY=2;EX=6;EY=-14;EDGE=4;$LLB=;LLT=;LMT=;LMB=;LRT=;LRB=CX=7:CY=14:OX=0:OY=0:HDN=0:BLD=0:ITA=0:UND=0:CLR=-1:ALN=0:DIR=0:ROT=0;IRHS=;ILHS=;Path=;" subject="EAID_4B77B922_B452_4cfe_A7E4_EDADC5EB5EDF" style="Mode=3;EOID=AB11E0CE;SOID=FCA96C30;Color=-1;LWidth=1;Hidden=0;"/>
					<element geometry="SX=44;SY=13;EX=-47;EY=32;EDGE=2;$LLB=CX=5:CY=14:OX=0:OY=0:HDN=0:BLD=0:ITA=0:UND=0:CLR=-1:ALN=0:DIR=0:ROT=0;LLT=;LMT=;LMB=;LRT=;LRB=CX=5:CY=14:OX=0:OY=0:HDN=0:BLD=0:ITA=0:UND=0:CLR=-1:ALN=0:DIR=0:ROT=0;IRHS=;ILHS=;Path=414:-189$414:-241$;" subject="EAID_5F1DD95D_E546_4b97_89F3_A85E61203D8E" style="Mode=3;EOID=CB2B6B87;SOID=F51E55B6;Color=-1;LWidth=1;Hidden=0;"/>
					<element geometry="SX=0;SY=0;EX=0;EY=0;EDGE=4;$LLB=;LLT=;LMT=;LMB=;LRT=;LRB=;IRHS=;ILHS=;Path=;" subject="EAID_E9EFA9B0_AA4B_47bb_B785_823C4F0363D6" style="Mode=3;EOID=CB2B6B87;SOID=D2B839D3;Color=-1;LWidth=1;Hidden=0;"/>
					<element geometry="SX=1;SY=32;EX=34;EY=4;EDGE=1;$LLB=;LLT=;LMT=;LMB=;LRT=;LRB=CX=5:CY=14:OX=0:OY=0:HDN=0:BLD=0:ITA=0:UND=0:CLR=-1:ALN=0:DIR=0:ROT=0;IRHS=;ILHS=;Path=941:-75$;" subject="EAID_3E93BDB2_46A2_4c2e_BECA_E598270EEBD1" style="Mode=3;EOID=E43F2D6C;SOID=1A48C3D7;Color=-1;LWidth=1;Hidden=0;"/>
					<element geometry="SX=-96;SY=20;EX=2;EY=17;EDGE=4;$LLB=CX=5:CY=14:OX=-9:OY=3:HDN=0:BLD=0:ITA=0:UND=0:CLR=-1:ALN=0:DIR=0:ROT=0;LLT=;LMT=;LMB=;LRT=;LRB=CX=7:CY=14:OX=3:OY=0:HDN=0:BLD=0:ITA=0:UND=0:CLR=-1:ALN=0:DIR=0:ROT=0;IRHS=;ILHS=;Path=;" subject="EAID_ED27E60E_B56F_4457_ABE5_417D16E8B5CD" style="Mode=3;EOID=D2B839D3;SOID=1A48C3D7;Color=-1;LWidth=1;Hidden=0;"/>
					<element geometry="SX=0;SY=0;EX=1;EY=18;EDGE=3;$LLB=CX=5:CY=14:OX=0:OY=0:HDN=0:BLD=0:ITA=0:UND=0:CLR=-1:ALN=0:DIR=0:ROT=0;LLT=;LMT=;LMB=;LRT=;LRB=CX=7:CY=14:OX=3:OY=-19:HDN=0:BLD=0:ITA=0:UND=0:CLR=-1:ALN=0:DIR=0:ROT=0;IRHS=;ILHS=;Path=428:-390$;" subject="EAID_B1F885E5_5EA6_4607_BD57_C2659E7B9099" style="Mode=3;EOID=FCA96C30;SOID=681ACACE;Color=-1;LWidth=1;Hidden=0;"/>
					<element geometry="SX=-88;SY=1;EX=-8;EY=-20;EDGE=3;$LLB=CX=5:CY=14:OX=0:OY=0:HDN=0:BLD=0:ITA=0:UND=0:CLR=-1:ALN=0:DIR=0:ROT=0;LLT=;LMT=;LMB=;LRT=;LRB=CX=7:CY=14:OX=0:OY=0:HDN=0:BLD=0:ITA=0:UND=0:CLR=-1:ALN=0:DIR=0:ROT=0;IRHS=;ILHS=;Path=852:-361$586:-361$586:-433$;" subject="EAID_E9C5BCDE_0BA6_4394_AA09_4B6F7230BEB8" style="Mode=3;EOID=B23DDC2A;SOID=1A48C3D7;Color=-1;LWidth=1;Hidden=0;"/>
					<element geometry="SX=83;SY=3;EX=28;EY=-34;EDGE=2;$LLB=CX=5:CY=14:OX=0:OY=0:HDN=0:BLD=0:ITA=0:UND=0:CLR=-1:ALN=0:DIR=0:ROT=0;LLT=;LMT=;LMB=;LRT=;LRB=CX=5:CY=14:OX=0:OY=0:HDN=0:BLD=0:ITA=0:UND=0:CLR=-1:ALN=0:DIR=0:ROT=0;IRHS=;ILHS=;Path=1058:-275$;" subject="EAID_44FC0EC0_3ECE_4fa5_A59A_42410D2E9CA6" style="Mode=3;EOID=7E7479C7;SOID=1A48C3D7;Color=-1;LWidth=1;Hidden=0;"/>
					<element geometry="SX=4;SY=49;EX=-48;EY=28;EDGE=2;$LLB=;LLT=;LMT=;LMB=;LRT=;LRB=CX=5:CY=14:OX=0:OY=0:HDN=0:BLD=0:ITA=0:UND=0:CLR=-1:ALN=0:DIR=0:ROT=0;IRHS=;ILHS=;Path=;" subject="EAID_823DDB52_E6E6_40da_B66B_5841F3CA63D9" style="Mode=3;EOID=E43F2D6C;SOID=681ACACE;Color=-1;LWidth=1;Hidden=0;"/>
					<element geometry="SX=0;SY=-5;EX=0;EY=-11;EDGE=4;$LLB=;LLT=;LMT=;LMB=;LRT=;LRB=;IRHS=;ILHS=;Path=;" subject="EAID_B64D968A_3739_4811_ADAA_E6D8B216885A" style="Mode=3;EOID=FCA96C30;SOID=B23DDC2A;Color=-1;LWidth=1;Hidden=0;"/>
					<element geometry="SX=-32;SY=-3;EX=-54;EY=11;EDGE=4;$LLB=;LLT=;LMT=;LMB=;LRT=;LRB=;IRHS=;ILHS=;Path=11:-34$11:-263$;" subject="EAID_47953BD6_4EC3_4564_B96A_4465D52B1871" style="Mode=3;EOID=00CC3393;SOID=C87CDBB1;Color=-1;LWidth=1;Hidden=0;"/>
				</elements>
			</diagram>
			<diagram xmi:id="EAID_15C317BC_E3C5_41a7_B5A4_42C68BAA0D2D">
				<model package="EAPK_F86D9D61_608D_458f_9315_BFBA0CC9DD79" localID="4" owner="EAPK_F86D9D61_608D_458f_9315_BFBA0CC9DD79"/>
				<properties name="System" type="Logical"/>
				<project author="Usuario" version="1.0" created="2005-11-20 00:00:00" modified="2006-01-19 00:00:00"/>
				<style1 value="ShowPrivate=1;ShowProtected=1;ShowPublic=1;HideRelationships=0;Locked=0;Border=0;HighlightForeign=0;PackageContents=0;SequenceNotes=0;ScalePrintImage=0;PPgs.cx=0;PPgs.cy=0;DocSize.cx=795;DocSize.cy=1138;ShowDetails=0;Orientation=P;Zoom=100;ShowTags=0;OpParams=1;VisibleAttributeDetail=0;ShowOpRetType=1;ShowIcons=1;CollabNums=0;HideProps=0;ShowReqs=0;ShowCons=0;PaperSize=9;HideParents=0;UseAlias=0;HideAtts=0;HideOps=0;HideStereo=0;HideElemStereo=0;ShowTests=0;ShowMaint=0;ConnectorNotation=UML 2.1;ExplicitNavigability=0;AdvancedElementProps=1;AdvancedFeatureProps=1;AdvancedConnectorProps=1;ShowNotes=0;SuppressBrackets=0;SuppConnectorLabels=0;PrintPageHeadFoot=0;ShowAsList=0;"/>
				<style2 value="ExcludeRTF=0;DocAll=0;HideQuals=0;AttPkg=1;ShowTests=0;ShowMaint=0;SuppressFOC=0;MatrixActive=0;SwimlanesActive=1;MatrixLineWidth=1;MatrixLocked=0;TConnectorNotation=UML 2.1;TExplicitNavigability=0;AdvancedElementProps=1;AdvancedFeatureProps=1;AdvancedConnectorProps=1;ProfileData=;MDGDgm=;STBLDgm=;ShowNotes=0;VisibleAttributeDetail=0;ShowOpRetType=1;SuppressBrackets=0;SuppConnectorLabels=0;PrintPageHeadFoot=0;ShowAsList=0;"/>
				<swimlanes value="locked=false;orientation=0;width=0;inbar=false;names=false;color=0;bold=false;fcol=0;;cls=0;"/>
				<matrixitems value="locked=false;matrixactive=false;swimlanesactive=true;width=1;"/>
				<elements>
					<element geometry="Left=148;Top=332;Right=238;Bottom=422;" subject="EAID_0CF0FB50_FADE_4491_8573_F9E9813AFD48" seqno="1" style="DUID=511B1210;"/>
				</elements>
			</diagram>
			<diagram xmi:id="EAID_E9AAAA14_8DF0_499c_9B64_26FCFA576E3A">
				<model package="EAPK_D907E3C2_9A81_4fb4_96DC_A6CF5E58ACEF" localID="5" owner="EAPK_D907E3C2_9A81_4fb4_96DC_A6CF5E58ACEF"/>
				<properties name="Frameworks" type="Logical"/>
				<project author="Usuario" version="1.0" created="2005-11-20 00:00:00" modified="2006-01-11 00:00:00"/>
				<style1 value="ShowPrivate=1;ShowProtected=1;ShowPublic=1;HideRelationships=0;Locked=0;Border=0;HighlightForeign=0;PackageContents=0;SequenceNotes=0;ScalePrintImage=0;PPgs.cx=0;PPgs.cy=0;DocSize.cx=795;DocSize.cy=1138;ShowDetails=0;Orientation=P;Zoom=100;ShowTags=0;OpParams=1;VisibleAttributeDetail=0;ShowOpRetType=1;ShowIcons=1;CollabNums=0;HideProps=0;ShowReqs=0;ShowCons=0;PaperSize=9;HideParents=0;UseAlias=0;HideAtts=0;HideOps=0;HideStereo=0;HideElemStereo=0;ShowTests=0;ShowMaint=0;ConnectorNotation=UML 2.1;ExplicitNavigability=0;AdvancedElementProps=1;AdvancedFeatureProps=1;AdvancedConnectorProps=1;ShowNotes=0;SuppressBrackets=0;SuppConnectorLabels=0;PrintPageHeadFoot=0;ShowAsList=0;"/>
				<style2 value="ExcludeRTF=0;DocAll=0;HideQuals=0;AttPkg=1;ShowTests=0;ShowMaint=0;SuppressFOC=0;MatrixActive=0;SwimlanesActive=1;MatrixLineWidth=1;MatrixLocked=0;TConnectorNotation=UML 2.1;TExplicitNavigability=0;AdvancedElementProps=1;AdvancedFeatureProps=1;AdvancedConnectorProps=1;ProfileData=;MDGDgm=;STBLDgm=;ShowNotes=0;VisibleAttributeDetail=0;ShowOpRetType=1;SuppressBrackets=0;SuppConnectorLabels=0;PrintPageHeadFoot=0;ShowAsList=0;"/>
				<swimlanes value="locked=false;orientation=0;width=0;inbar=false;names=false;color=0;bold=false;fcol=0;;cls=0;"/>
				<matrixitems value="locked=false;matrixactive=false;swimlanesactive=true;width=1;"/>
				<elements>
					<element geometry="Left=73;Top=67;Right=319;Bottom=165;" subject="EAID_42F3F5C6_28DB_44ea_AA87_909CA2AEE59D" seqno="1" style="DUID=B5CE793B;LCol=8355711;BCol=14745599;BFol=2631720;LWth=1;"/>
				</elements>
			</diagram>
		</diagrams>
	</xmi:Extension>
</xmi:XMI>
'! !
!XmiReaderTest categoriesFor: #xmiReader!accessing!private! !
!XmiReaderTest categoriesFor: #xmiReader:!accessing!private! !
!XmiReaderTest categoriesFor: #xmiUmlModelExample1!public! !

