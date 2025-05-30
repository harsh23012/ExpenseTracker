<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<f:view>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <title>Login - Expense Tracker</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <style>
        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }
        .fade-in {
            animation: fadeIn 0.6s ease-out;
        }
        .hover-effect:hover {
            transform: scale(1.03);
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.15);
        }
        .transition-all {
            transition: all 0.3s ease-in-out;
        }
        .error-message {
            color: #dc2626;
            font-size: 0.875rem;
            margin-top: 0.25rem;
        }
    </style>
</head>
<body class="bg-gradient-to-r from-blue-100 to-green-200 min-h-screen flex items-center justify-center p-6">

    <div class="max-w-md w-full bg-white rounded-3xl shadow-2xl p-10 fade-in">

        <h2 class="text-3xl font-bold text-indigo-700 mb-8 text-center">Login to Your Account</h2>

        <h:form>

            <h:messages globalOnly="true" layout="list" styleClass="error-message mb-6" />

            <!-- Login Option Dropdown -->
            <div class="mb-6">
                <label class="block text-gray-700 mb-2" for="loginOption">Login With</label>
                <h:selectOneMenu id="loginOption" value="#{userStatelessImpl.loginOption}" required="true"
                                 styleClass="w-full px-4 py-2 rounded-lg border border-gray-300 focus:ring focus:ring-indigo-300 focus:outline-none">
                    <f:selectItem itemLabel="Select Option" itemValue="" />
                    <f:selectItem itemLabel="Username" itemValue="USERNAME" />
                    <f:selectItem itemLabel="Email" itemValue="EMAIL" />
                    <f:selectItem itemLabel="Phone" itemValue="PHONE" />
                </h:selectOneMenu>
                <h:message for="loginOption" styleClass="error-message" />
            </div>

            <!-- Login Input (Username / Email / Phone) -->
            <div class="mb-6">
                <label class="block text-gray-700 mb-2" for="userInput">
                    <h:outputText value="#{loginBean.loginOption eq 'USERNAME' ? 'Username' : (loginBean.loginOption eq 'EMAIL' ? 'Email' : (loginBean.loginOption eq 'PHONE' ? 'Phone' : 'Username / Email / Phone'))}" />
                </label>
                <h:inputText id="userInput" value="#{userStatelessImpl.userInput}" required="true"
                             styleClass="w-full px-4 py-2 rounded-lg border border-gray-300 focus:ring focus:ring-indigo-300 focus:outline-none" />
                <h:message for="userInput" styleClass="error-message" />
            </div>

            <!-- Password -->
            <div class="mb-8">
                <label class="block text-gray-700 mb-2" for="passwordInput">Password</label>
                <h:inputSecret id="passwordInput" value="#{userStatelessImpl.password}" required="true"
                               styleClass="w-full px-4 py-2 rounded-lg border border-gray-300 focus:ring focus:ring-indigo-300 focus:outline-none" />
                <h:message for="passwordInput" styleClass="error-message" />
            </div>

            <!-- Submit Button -->
            <div class="text-center">
                <h:commandButton action="#{userStatelessImpl.login}" value="Login"
                                 styleClass="hover-effect transition-all bg-indigo-600 text-white font-semibold px-8 py-3 rounded-lg shadow-md" />
            </div>
            

        </h:form>

    </div>

</body>
</html>
</f:view>
