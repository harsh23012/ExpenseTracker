<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<f:view>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <title>Register - Expense Tracker</title>
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
        /* Style for error messages */
        .error-message {
            color: #dc2626; /* Tailwind red-600 */
            font-size: 0.875rem;
            margin-top: 0.25rem;
        }
    </style>
</head>
<body class="bg-gradient-to-r from-blue-100 to-green-200 min-h-screen flex items-center justify-center p-6">

    <div class="max-w-xl w-full bg-white rounded-3xl shadow-2xl p-10 fade-in">

        <h2 class="text-3xl font-bold text-indigo-700 mb-8 text-center">Create Your Account</h2>

        <h:form>

            <!-- Global messages for errors -->
            <h:messages globalOnly="true" layout="list" styleClass="error-message mb-6" />

            <!-- Name -->
            <div class="mb-5">
                <label class="block text-gray-700 mb-2" for="nameInput">Full Name</label>
                <h:inputText id="nameInput" value="#{user.name}" required="true"
                             styleClass="w-full px-4 py-2 rounded-lg border border-gray-300 focus:ring focus:ring-indigo-300 focus:outline-none" />
                <h:message for="nameInput" styleClass="error-message" />
            </div>

            <!-- Email -->
            <div class="mb-5">
                <label class="block text-gray-700 mb-2" for="emailInput">Email</label>
                <h:inputText id="emailInput" value="#{user.email}" required="true"
                             styleClass="w-full px-4 py-2 rounded-lg border border-gray-300 focus:ring focus:ring-indigo-300 focus:outline-none" />
                <h:message for="emailInput" styleClass="error-message" />
            </div>

            <!-- Username -->
            <div class="mb-5">
                <label class="block text-gray-700 mb-2" for="usernameInput">Username</label>
                <h:inputText id="usernameInput" value="#{user.user_name}" required="true"
                             styleClass="w-full px-4 py-2 rounded-lg border border-gray-300 focus:ring focus:ring-indigo-300 focus:outline-none" />
                <h:message for="usernameInput" styleClass="error-message" />
            </div>

            <!-- Phone -->
            <div class="mb-8">
                <label class="block text-gray-700 mb-2" for="phoneInput">Phone</label>
                <h:inputText id="phoneInput" value="#{user.phone}" required="true"
                             styleClass="w-full px-4 py-2 rounded-lg border border-gray-300 focus:ring focus:ring-indigo-300 focus:outline-none" />
                <h:message for="phoneInput" styleClass="error-message" />
            </div>
            
             <!-- User Type Select -->
            <div class="mb-8">
                <label class="block text-gray-700 mb-2" for="userTypeSelect">User Type</label>
                <h:selectOneMenu id="userTypeSelect" value="#{user.user_type}" required="true"
                                 styleClass="w-full px-4 py-2 rounded-lg border border-gray-300 focus:ring focus:ring-indigo-300 focus:outline-none">
                    <f:selectItem itemLabel="Select Type" itemValue="" />
                    <f:selectItem itemLabel="User" itemValue="USER" />
                    <f:selectItem itemLabel="Admin" itemValue="ADMIN" />
                </h:selectOneMenu>
                <h:message for="userTypeSelect" styleClass="error-message" />
            </div>
            
            <div class="mb-8">
                <label class="block text-gray-700 mb-2" for="passwordInput">Password</label>
                <h:inputSecret id="passwordInput" value="#{user.password}" required="true"
                               styleClass="w-full px-4 py-2 rounded-lg border border-gray-300 focus:ring focus:ring-indigo-300 focus:outline-none" />
                <h:message for="passwordInput" styleClass="error-message" />
            </div>

            <!-- Submit Button -->
            <div class="text-center">
                <h:commandButton action="#{userStatelessImpl.addUserEjb(user)}" value="Add Employ"
                                 styleClass="hover-effect transition-all bg-indigo-600 text-white font-semibold px-8 py-3 rounded-lg shadow-md" />
            </div>
            

        </h:form>
    </div>

</body>
</html>
</f:view>
