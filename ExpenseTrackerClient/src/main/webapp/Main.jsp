<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<f:view>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <title>Expense Tracker - Home</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <style>
        @keyframes fadeInUp {
            0% { opacity: 0; transform: translateY(20px);}
            100% { opacity: 1; transform: translateY(0);}
        }
        .fade-in-up {
            animation: fadeInUp 0.6s ease-out;
        }
        .hover-glow:hover {
            transform: scale(1.05);
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.15);
        }
        .transition-all {
            transition: all 0.3s ease-in-out;
        }
    </style>
</head>
<body class="bg-gradient-to-r from-green-100 to-blue-200 min-h-screen flex items-center justify-center p-6">

    <!-- Main container -->
    <div class="w-full max-w-6xl bg-white rounded-3xl shadow-2xl overflow-hidden flex flex-col md:flex-row fade-in-up">

        <!-- Left: About section -->
        <div class="flex-1 bg-gradient-to-br from-indigo-100 to-white p-10 flex flex-col justify-center">
            <h1 class="text-5xl font-extrabold text-indigo-700 mb-6">Welcome to Expense Tracker</h1>
            <p class="text-gray-700 text-lg leading-relaxed">
                Effortlessly track your expenses with ease. Create trip groups, split costs, and keep your finances transparent with your group members.  
                Whether traveling or managing daily expenses, this is your go-to companion for financial clarity.
            </p>
        </div>

        <!-- Right: Buttons section -->
        <div class="flex-1 bg-white p-10 flex items-center justify-center">
            <h:form>
                <div class="flex flex-col space-y-6 w-full max-w-sm">

                    <h:commandButton value="Login" action="Login"
                        styleClass="hover-glow transition-all"
                        style="background-color:#4f46e5; color:white; font-size:1.1rem; font-weight:600; padding:0.85rem 2.5rem; border-radius:0.75rem; box-shadow:0 4px 6px rgba(0,0,0,0.1);" />

                    <h:commandButton value="Register" action="Register"
                        styleClass="hover-glow transition-all"
                        style="background-color:#16a34a; color:white; font-size:1.1rem; font-weight:600; padding:0.85rem 2.5rem; border-radius:0.75rem; box-shadow:0 4px 6px rgba(0,0,0,0.1);" />

                </div>
            </h:form>
        </div>

    </div>
</body>
</html>
</f:view>
