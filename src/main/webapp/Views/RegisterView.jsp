<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>${title}</title>
    <script src="https://cdn.jsdelivr.net/npm/@tailwindcss/browser@4"></script>
    <style>
        /*
           The @theme inline block defines default (light mode) variables.
           For dark mode, we'll primarily rely on Tailwind's 'dark:' utility classes,
           but these theme variables could be extended if more complex custom
           colors were needed beyond what Tailwind provides directly.
        */
        @theme inline {
            --color-primary: #0f172a;
            --color-primary-light: #1e293b;
            --color-accent: #0ea5e9;
            --color-accent-light: #38bdf8;
            --color-border: #e2e8f0;
            --color-muted: #64748b;
            --radius: 0.625rem;
        }
    </style>
</head>
<body class="w-screen bg-gray-100 dark:bg-slate-900 transition-colors duration-300">
<div class="w-full mt-10 m-auto max-w-md bg-white dark:bg-slate-800 rounded-xl shadow-lg dark:shadow-xl dark:shadow-slate-950 border border-slate-200 dark:border-slate-700 p-8 relative">

    <div class="flex lg:hidden items-center gap-2 mb-6">
        <div class="w-10 h-10 bg-slate-900 dark:bg-slate-700 rounded-lg flex items-center justify-center">
            <svg class="w-6 h-6 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4.318 6.318a4.5 4.5 0 000 6.364L12 20.364l7.682-7.682a4.5 4.5 0 00-6.364-6.364L12 7.636l-1.318-1.318a4.5 4.5 0 00-6.364 0z"/>
            </svg>
        </div>
        <span class="text-xl font-bold text-slate-900 dark:text-slate-50">MediCare Portal</span>
    </div>

    <div class="space-y-2 mb-6">
        <h2 class="text-2xl font-bold text-slate-900 dark:text-slate-50">Create Account</h2>
        <p class="text-slate-600 dark:text-slate-400">Sign up to join our healthcare platform</p>
    </div>

    <c:if test="${not empty error}">
        <p>${error}</p>
    </c:if>

    <form method="post" action="register" id="registerForm" class="space-y-4">

        <div class="space-y-2">
            <label for="fullName" class="block text-sm font-medium text-slate-900 dark:text-slate-50">
                Full Name
            </label>
            <input id="fullName" name="fullName" type="text" placeholder="John Doe" required
                   class="w-full px-3 py-2 border
               ${error eq 'Invalid name' ? 'border-red-600' : 'border-slate-300'}
               dark:border-slate-600 rounded-lg focus:outline-none focus:ring-2
               focus:ring-slate-900 dark:focus:ring-sky-500 focus:border-transparent
               dark:bg-slate-700 dark:text-slate-50 dark:placeholder-slate-400"/>
        </div>

        <div class="space-y-2">
            <label for="email" class="block text-sm font-medium text-slate-900 dark:text-slate-50">
                Email
            </label>
            <input id="email" name="email" type="email" placeholder="doctor@hospital.com" required
                   class="w-full px-3 py-2 border
               ${error eq 'Email already exists' ? 'border-red-600' : 'border-slate-300'}
               dark:border-slate-600 rounded-lg focus:outline-none focus:ring-2
               focus:ring-slate-900 dark:focus:ring-sky-500 focus:border-transparent
               dark:bg-slate-700 dark:text-slate-50 dark:placeholder-slate-400"/>
        </div>

        <div class="space-y-2">
            <label for="password" class="block text-sm font-medium text-slate-900 dark:text-slate-50">
                Password
            </label>
            <input name="password" id="password" type="password" placeholder="Enter your password" required
                   class="w-full px-3 py-2 border
               ${error eq 'Password too short' || error eq 'Passwords do not match' ? 'border-red-600' : 'border-slate-300'}
               dark:border-slate-600 rounded-lg focus:outline-none focus:ring-2
               focus:ring-slate-900 dark:focus:ring-sky-500 focus:border-transparent
               dark:bg-slate-700 dark:text-slate-50 dark:placeholder-slate-400"/>
        </div>

        <div class="space-y-2">
            <label for="confirmPassword" class="block text-sm font-medium text-slate-900 dark:text-slate-50">
                Confirm Password
            </label>
            <input name="confirmPassword" id="confirmPassword" type="password" placeholder="Confirm your password" required
                   class="w-full px-3 py-2 border
               ${error eq 'Passwords do not match' ? 'border-red-600' : 'border-slate-300'}
               dark:border-slate-600 rounded-lg focus:outline-none focus:ring-2
               focus:ring-slate-900 dark:focus:ring-sky-500 focus:border-transparent
               dark:bg-slate-700 dark:text-slate-50 dark:placeholder-slate-400"/>
        </div>

        <div id="specialtyContainer" class="space-y-2 hidden">
            <label for="specialty" class="block text-sm font-medium text-slate-900 dark:text-slate-50">
                Specialty
            </label>
            <input id="specialty" name="specialty" type="text" placeholder="e.g., Cardiology"
                   class="w-full px-3 py-2 border
               ${error eq 'Invalid specialty' ? 'border-red-600' : 'border-slate-300'}
               dark:border-slate-600 rounded-lg focus:outline-none focus:ring-2
               focus:ring-slate-900 dark:focus:ring-sky-500 focus:border-transparent
               dark:bg-slate-700 dark:text-slate-50 dark:placeholder-slate-400"/>
        </div>

        <div id="tariffContainer" class="space-y-2 hidden">
            <label for="tariff" class="block text-sm font-medium text-slate-900 dark:text-slate-50">
                Tariff (Hourly Rate)
            </label>
            <input id="tariff" name="tariff" type="number" step="0.01" placeholder="e.g., 150.00"
                   class="w-full px-3 py-2 border
               ${error eq 'Invalid tariff' ? 'border-red-600' : 'border-slate-300'}
               dark:border-slate-600 rounded-lg focus:outline-none focus:ring-2
               focus:ring-slate-900 dark:focus:ring-sky-500 focus:border-transparent
               dark:bg-slate-700 dark:text-slate-50 dark:placeholder-slate-400"/>
        </div>

        <div class="space-y-2">
            <label for="role" class="block text-sm font-medium text-slate-900 dark:text-slate-50">
                Role
            </label>
            <select id="role" name="role" required
                    class="w-full px-3 py-2 border
                ${error eq 'Invalid role' ? 'border-red-600' : 'border-slate-300'}
                dark:border-slate-600 rounded-lg focus:outline-none focus:ring-2
                focus:ring-slate-900 dark:focus:ring-sky-500 focus:border-transparent
                dark:bg-slate-700 dark:text-slate-50">
                <option value="">Select Role</option>
                <option value="NURSE">Nurse</option>
                <option value="GENERALIST">Generalist</option>
                <option value="SPECIALIST">Specialist</option>
            </select>
        </div>

        <button type="submit"
                class="bg-black/50 w-full py-2.5 px-4 rounded-lg font-semibold flex items-center justify-center gap-2 text-white
               dark:bg-sky-600 dark:hover:bg-sky-700 transition-colors">
            Sign up
        </button>
    </form>

    <script>
        document.addEventListener("DOMContentLoaded", () => {
            let $ = (s)=>document.getElementById(s);

            function toggleFields() {
                const role = $("role").value;
                $("specialtyContainer").classList.toggle("hidden", role !== "SPECIALIST");
                $("tariffContainer").classList.toggle("hidden", role !== "GENERALIST");
            }

            $("role").addEventListener("change", toggleFields);
            toggleFields();
        });
    </script>


    <div class="mt-6 text-center">
        <p class="text-sm text-slate-600 dark:text-slate-400">
            Already have an account?
            <a href="login" class="text-sky-500 hover:text-sky-600 dark:text-sky-400 dark:hover:text-sky-300 font-medium transition-colors">
                Sign in here
            </a>
        </p>
    </div>
</div>
</body>
</html>