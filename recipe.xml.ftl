<?xml version="1.0"?>
<#import "root://activities/common/kotlin_macros.ftl" as kt>
<recipe>
    <#include "../common/recipe_manifest.xml.ftl" />
    <@kt.addAllKotlinDependencies />

<#if generateLayout>
    <#include "../common/recipe_simple.xml.ftl" />
    <open file="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />
</#if>

<instantiate from="root/src/app_package/Activity.${ktOrJavaExt}.ftl"
             to="${escapeXmlAttribute(srcOut)}/${mvpName}Activity.${ktOrJavaExt}" />
<instantiate from="root/src/app_package/Contract.${ktOrJavaExt}.ftl"
             to="${escapeXmlAttribute(srcOut)}/${mvpName}Contract.${ktOrJavaExt}" />
<instantiate from="root/src/app_package/Presenter.${ktOrJavaExt}.ftl"
             to="${escapeXmlAttribute(srcOut)}/${mvpName}Presenter.${ktOrJavaExt}" />
<open file="${escapeXmlAttribute(srcOut)}/${mvpName}Activity.${ktOrJavaExt}" />
</recipe>
