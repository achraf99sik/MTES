<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>${title}</title>
    <script src="https://cdn.jsdelivr.net/npm/@tailwindcss/browser@4"></script>
    <style>
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
            <h2 class="text-2xl font-bold text-slate-900 dark:text-slate-50">Welcome back</h2>
            <p class="text-slate-600 dark:text-slate-400">Sign in to access your healthcare dashboard</p>
        </div>

        <form method="post" action="login" id="loginForm" class="space-y-4">
            <div class="space-y-2">
                <label for="email" class="block text-sm font-medium text-slate-900 dark:text-slate-50">
                    Email
                </label>
                <input id="email" name="email" type="email" placeholder="doctor@hospital.com" required
                       class="w-full px-3 py-2 border border-slate-300 dark:border-slate-600 rounded-lg focus:outline-none focus:ring-2 focus:ring-slate-900 dark:focus:ring-sky-500 focus:border-transparent dark:bg-slate-700 dark:text-slate-50 dark:placeholder-slate-400"/>
            </div>

            <div class="space-y-2">
                <div class="flex items-center justify-between">
                    <label for="password" class="block text-sm font-medium text-slate-900 dark:text-slate-50">
                        Password
                    </label>
                    <a href="#" class="text-sm text-slate-900 dark:text-sky-400 hover:text-slate-700 dark:hover:text-sky-300 transition-colors">
                        Forgot password?
                    </a>
                </div>
                <input name="password" id="password" type="password" placeholder="Enter your password" required
                       class="w-full px-3 py-2 border border-slate-300 dark:border-slate-600 rounded-lg focus:outline-none focus:ring-2 focus:ring-slate-900 dark:focus:ring-sky-500 focus:border-transparent dark:bg-slate-700 dark:text-slate-50 dark:placeholder-slate-400"/>
            </div>

            <div class="flex items-center space-x-2">
                <input type="checkbox" id="remember"
                       class="checkbox w-4 h-4 border-slate-300 dark:border-slate-600 rounded cursor-pointer checked:bg-slate-900 dark:checked:bg-sky-500 focus:ring-slate-900 dark:focus:ring-sky-500"/>
                <label for="remember" class="text-sm text-slate-900 dark:text-slate-50 cursor-pointer select-none">
                    Remember me for 30 days
                </label>
            </div>

            <button type="submit" class="bg-black/50 w-full py-2.5 px-4 rounded-lg font-semibold flex items-center justify-center gap-2 text-white
                                         dark:bg-sky-600 dark:hover:bg-sky-700 transition-colors">
                Sign in
            </button>
        </form>
    </div>
</body>
</html>