<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:e="..."
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xsi:schemaLocation="https://www.portalvs.sk/regzam/employees.xsd">
  <xsl:output method="xml" indent="yes"/>
  <xsl:template match="/">
    <root>
      <xsl:apply-templates select="e:Employees/e:Employee"/>
    </root>
  </xsl:template>
  <xsl:template match="e:Employee">
    <xsl:variable name="employeeId" select="@Id"/>
    <Employee>
      <xsl:apply-templates select="e:GivenName"/>
      <xsl:apply-templates select="e:FamilyName"/>
      <xsl:apply-templates select="e:DegreePedagogicalAcademic"/>
      <xsl:apply-templates select="e:DegreeMaster"/>
      <xsl:apply-templates select="e:DegreeDoctor"/>
      <xsl:apply-templates select="e:Employment"/>
      <xsl:apply-templates select="e:Guarantee"/>
    </Employee>
  </xsl:template>
  <xsl:template match="e:Employment">
    <xsl:apply-templates select="e:Workplace"/>
  </xsl:template>
  <xsl:template match="e:Workplace">
    <xsl:variable name="workplaceCode" select="@Code"/>
    <Workplace>
      <xsl:apply-templates select="e:University"/>
      <xsl:apply-templates select="e:Faculty"/>
    </Workplace>
  </xsl:template>
  <xsl:template match="e:University">
    <xsl:variable name="universityCode" select="@Code"/>
    <University>
      <xsl:value-of select="."/>
    </University>
  </xsl:template>
  <xsl:template match="e:Faculty">
    <xsl:variable name="facultyCode" select="@Code"/>
    <Faculty>
      <xsl:value-of select="."/>
    </Faculty>
  </xsl:template>
  <xsl:template match="e:GivenName">
    <GivenName>
      <xsl:value-of select="."/>
    </GivenName>
  </xsl:template>
  <xsl:template match="e:FamilyName">
    <FamilyName>
      <xsl:value-of select="."/>
    </FamilyName>
  </xsl:template>
  <xsl:template match="e:DegreePedagogicalAcademic">
    <DegreePedagogicalAcademic>
      <xsl:value-of select="."/>
    </DegreePedagogicalAcademic>
  </xsl:template>
  <xsl:template match="e:DegreeMaster">
    <DegreeMaster>
      <xsl:value-of select="."/>
    </DegreeMaster>
  </xsl:template>
  <xsl:template match="e:DegreeDoctor">
    <DegreeDoctor>
      <xsl:value-of select="."/>
    </DegreeDoctor>
  </xsl:template>
  <xsl:template match="e:Guarantee">
    <xsl:apply-templates select="e:StudyProgram"/>
  </xsl:template>
  <xsl:template match="e:StudyProgram">
    <StudyProgram>
      <xsl:value-of select="."/>
    </StudyProgram>
  </xsl:template>
  <xsl:template match="e:University">
    <University>
      <xsl:value-of select="."/>
    </University>
  </xsl:template>
  <xsl:template match="e:Faculty">
    <Faculty>
      <xsl:value-of select="."/>
    </Faculty>
  </xsl:template>
  <xsl:template match="e:FormOfStudy">
    <FormOfStudy>
      <xsl:value-of select="."/>
    </FormOfStudy>
  </xsl:template>
  <xsl:template match="e:LevelOfStudy">
    <LevelOfStudy>
      <xsl:value-of select="."/>
    </LevelOfStudy>
  </xsl:template>
</xsl:stylesheet>




