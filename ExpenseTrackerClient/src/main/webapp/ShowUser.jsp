<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%> 
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%> 
<f:view>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>User Records</title>
    <!-- Tailwind CSS CDN -->
    <script src="https://cdn.tailwindcss.com"></script>
    <style>
        @keyframes fadeInUp {
            0% {
                opacity: 0;
                transform: translateY(20px);
            }
            100% {
                opacity: 1;
                transform: translateY(0);
            }
        }
        .fade-in-up {
            animation: fadeInUp 0.6s ease-out;
        }
    </style>
</head>
<body class="bg-gradient-to-br from-blue-100 to-indigo-200 min-h-screen p-8">
    <h:form>
        <div class="max-w-6xl mx-auto fade-in-up">
            <div class="text-center mb-10">
                <h2 class="text-4xl font-bold text-indigo-700">User Records</h2>
            </div>

            <div class="overflow-x-auto shadow-2xl rounded-2xl bg-white p-6">
                <h:dataTable value="#{userStatelessImpl.showUsersEjb()}" var="e"
                             styleClass="min-w-full divide-y divide-gray-200 text-sm text-gray-800 text-center">
                    <h:column>
                        <f:facet name="header">
                            <span class="font-bold text-gray-700"><h:outputLabel value="User ID" /></span>
                        </f:facet>
                        <h:outputText value="#{e.id}"/>
                    </h:column>
                    <h:column>
                        <f:facet name="header">
                            <span class="font-bold text-gray-700"><h:outputLabel value="Name" /></span>
                        </f:facet>
                        <h:outputText value="#{e.name}"/>
                    </h:column>
                    <h:column>
                        <f:facet name="header">
                            <span class="font-bold text-gray-700"><h:outputLabel value="Email" /></span>
                        </f:facet>
                        <h:outputText value="#{e.email}"/>
                    </h:column>
                    <h:column>
                        <f:facet name="header">
                            <span class="font-bold text-gray-700"><h:outputLabel value="Username" /></span>
                        </f:facet>
                        <h:outputText value="#{e.user_name}"/>
                    </h:column>
                    <h:column>
                        <f:facet name="header">
                            <span class="font-bold text-gray-700"><h:outputLabel value="Phone No" /></span>
                        </f:facet>
                        <h:outputText value="#{e.phone}"/>
                    </h:column>
                    <h:column>
                        <f:facet name="header">
                            <span class="font-bold text-gray-700"><h:outputLabel value="Balance" /></span>
                        </f:facet>
                        <h:outputText value="#{e.balance}"/>
                    </h:column>
                    <h:column>
                        <f:facet name="header">
                            <span class="font-bold text-gray-700"><h:outputLabel value="Created At" /></span>
                        </f:facet>
                       <h:outputText value="#{e.created_at}">
				           <f:convertDateTime pattern="yyyy-MM-dd" />
				       </h:outputText>
                    </h:column>
                </h:dataTable>
            </div>
        </div>
        
    </h:form>
</body>
</html>
</f:view>
