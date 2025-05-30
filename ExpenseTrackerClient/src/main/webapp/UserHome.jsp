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
                Welcome, <h:outputText value="#{sessionScope.loggedInUser.name}" />
            </h1>
            <p><strong>Email:</strong> <h:outputText value="#{sessionScope.loggedInUser.email}" /></p>
            <p><strong>Phone:</strong> <h:outputText value="#{sessionScope.loggedInUser.phone}" /></p>
            <p><strong>Wallet Balance:</strong> <h:outputText value="#{sessionScope.loggedInUser.balance}" /></p>
        </div>

        <h:form>
            <h:commandButton value="Logout" action="#{userStatelessImpl.logout}"
                styleClass="bg-red-500 hover:bg-red-600 text-white font-semibold px-6 py-2 rounded" />
        </h:form>
    </header>


</body>
</html>
</f:view>
