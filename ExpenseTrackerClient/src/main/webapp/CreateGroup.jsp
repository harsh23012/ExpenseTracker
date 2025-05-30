<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core" %>

<f:view>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Create Group - Expense Tracker</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gradient-to-r from-purple-100 to-indigo-200 min-h-screen flex items-center justify-center p-6">

    <div class="max-w-md w-full bg-white rounded-3xl shadow-xl p-10">
        <h2 class="text-3xl font-bold text-indigo-700 mb-8 text-center">Create a New Group</h2>

        <h:form>
            <h:messages globalOnly="true" layout="list" styleClass="text-red-600 mb-4 text-sm" />
            
            <div class="mb-6">
			    <label class="block text-gray-700 mb-2">Created By</label>
			    <h:inputText value="#{sessionScope.loggedInUser.name}" readonly="true"
			                 styleClass="w-full px-4 py-2 border rounded-lg border-gray-300 bg-gray-100 text-gray-600" />
			</div>

            <!-- Group Name -->
            <div class="mb-6">
                <label class="block text-gray-700 mb-2" for="groupName">Group Name</label>
                <h:inputText id="groupName" value="#{tripGroup.name}" required="true"
                             styleClass="w-full px-4 py-2 border rounded-lg border-gray-300 focus:ring focus:ring-indigo-300" />
                <h:message for="groupName" styleClass="text-red-600 text-sm mt-1" />
            </div>

            <!-- Group Description -->
            <div class="mb-6">
                <label class="block text-gray-700 mb-2" for="groupDesc">Description</label>
                <h:inputTextarea id="groupDesc" value="#{tripGroup.description}" rows="4"
                                 styleClass="w-full px-4 py-2 border rounded-lg border-gray-300 focus:ring focus:ring-indigo-300" />
                <h:message for="groupDesc" styleClass="text-red-600 text-sm mt-1" />
            </div>

            <!-- Submit Button -->
            <div class="text-center">
                <h:commandButton value="Create Group" action="#{groupStatelessImpl.createGroupEjb(tripGroup)}"
                                 styleClass="bg-indigo-600 hover:bg-indigo-700 text-white font-semibold px-6 py-3 rounded-lg shadow-md" />
            </div>
        </h:form>
    </div>

</body>
</html>
</f:view>
