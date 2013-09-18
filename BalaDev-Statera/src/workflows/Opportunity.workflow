<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <outboundMessages>
        <fullName>Create_Opportunity</fullName>
        <apiVersion>28.0</apiVersion>
        <endpointUrl>https://app2.informaticacloud.com/saas/api/1/salesforceoutboundmessage/NGJeWBnHpdYEYwm65iCZHFYY5OWZp57A</endpointUrl>
        <fields>Id</fields>
        <fields>StageName</fields>
        <fields>Type</fields>
        <includeSessionId>false</includeSessionId>
        <integrationUser>bala.sadayappan@statera.com</integrationUser>
        <name>Create Opportunity</name>
        <protected>false</protected>
        <useDeadLetterQueue>false</useDeadLetterQueue>
    </outboundMessages>
    <rules>
        <fullName>CreateOpptyOnJMRSorg</fullName>
        <actions>
            <name>Create_Opportunity</name>
            <type>OutboundMessage</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Probability</field>
            <operation>equals</operation>
            <value>100</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
