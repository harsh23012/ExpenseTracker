<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<f:view>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <title>User Home - Expense Tracker</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gradient-to-r from-green-100 to-blue-200 min-h-screen flex flex-col">

    <!-- Navbar-style Header -->
    <header class="bg-white shadow-md p-6 flex flex-col sm:flex-row sm:items-center sm:justify-between">
        <div class="mb-2 sm:mb-0">
            <h1 class="text-2xl font-bold text-indigo-700">
                Welcome Admin, <h:outputText value="#{sessionScope.loggedInUser.name}" />
            </h1>
            <p><strong>Email:</strong> <h:outputText value="#{sessionScope.loggedInUser.email}" /></p>
            <p><strong>Phone:</strong> <h:outputText value="#{sessionScope.loggedInUser.phone}" /></p>
            <p><strong>Wallet Balance:</strong> <h:outputText value="#{sessionScope.loggedInUser.balance}" /></p>
        </div>

       <h:form styleClass="flex gap-4 mt-4 sm:mt-0">
        <!-- Create Group Button -->
        <h:commandButton value="Create Group" action="CreateGroup"
            styleClass="bg-blue-500 hover:bg-blue-600 text-white font-semibold px-6 py-2 rounded" />

        <!-- Logout Button -->
        <h:commandButton value="Logout" action="#{userStatelessImpl.logout}"
            styleClass="bg-red-500 hover:bg-red-600 text-white font-semibold px-6 py-2 rounded" />
    </h:form>
    </header>
    
        <h:form>
        <div class="max-w-6xl mx-auto fade-in-up">
            <div class="text-center mb-10">
                <h2 class="text-4xl font-bold text-indigo-700">Group Records</h2>
            </div>

            <div class="overflow-x-auto shadow-2xl rounded-2xl bg-white p-6">
                <h:dataTable value="#{groupStatelessImpl.showGroupsByAdminIdEjb()}" var="group"
                             styleClass="min-w-full divide-y divide-gray-200 text-sm text-gray-800 text-center">
                    <h:column>
                        <f:facet name="header">
                            <span class="font-bold text-gray-700"><h:outputLabel value="Group ID" /></span>
                        </f:facet>
                        <h:outputText value="#{group.id}"/>
                    </h:column>
                    <h:column>
                        <f:facet name="header">
                            <span class="font-bold text-gray-700"><h:outputLabel value="Group Name" /></span>
                        </f:facet>
                        <h:outputText value="#{group.name}"/>
                    </h:column>
                    <h:column>
                        <f:facet name="header">
                            <span class="font-bold text-gray-700"><h:outputLabel value="Description" /></span>
                        </f:facet>
                        <h:outputText value="#{group.description}"/>
                    </h:column>
                    <h:column>
                        <f:facet name="header">
                            <span class="font-bold text-gray-700"><h:outputLabel value="Created At" /></span>
                        </f:facet>
                       <h:outputText value="#{group.created_at}">
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
