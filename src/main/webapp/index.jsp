<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <title>MediCare Portal - Healthcare Management Platform</title>
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

        .btn-primary {
            background-color: var(--color-primary);
            color: white;
            transition: all 0.2s;
        }

        .btn-primary:hover {
            background-color: var(--color-primary-light);
            transform: translateY(-1px);
        }

        .btn-secondary {
            background-color: white;
            color: var(--color-primary);
            border: 2px solid var(--color-primary);
            transition: all 0.2s;
        }

        .btn-secondary:hover {
            background-color: var(--color-primary);
            color: white;
        }

        .feature-card {
            transition: all 0.3s;
        }

        .feature-card:hover {
            transform: translateY(-4px);
            box-shadow: 0 20px 25px -5px rgb(0 0 0 / 0.1), 0 8px 10px -6px rgb(0 0 0 / 0.1);
        }

        /* Added dark mode styles */
        .dark .btn-secondary {
            background-color: transparent;
            color: white;
            border-color: white;
        }

        .dark .btn-secondary:hover {
            background-color: white;
            color: #0f172a;
        }

        .dark .feature-card:hover {
            box-shadow: 0 20px 25px -5px rgb(0 0 0 / 0.4), 0 8px 10px -6px rgb(0 0 0 / 0.3);
        }

        /* Dark mode toggle button styles */
        .theme-toggle {
            position: relative;
            width: 60px;
            height: 30px;
            background-color: #e2e8f0;
            border-radius: 15px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .dark .theme-toggle {
            background-color: #334155;
        }

        .theme-toggle-slider {
            position: absolute;
            top: 3px;
            left: 3px;
            width: 24px;
            height: 24px;
            background-color: white;
            border-radius: 50%;
            transition: transform 0.3s;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .dark .theme-toggle-slider {
            transform: translateX(30px);
        }
    </style>
</head>
<body class="bg-white dark:bg-slate-900 transition-colors duration-300">
<!-- Navigation -->
<nav class="border-b border-slate-200 dark:border-slate-700 bg-white dark:bg-slate-900 sticky top-0 z-50 transition-colors duration-300">
    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div class="flex items-center justify-between h-16">
            <!-- Logo -->
            <div class="flex items-center gap-2">
                <div class="w-10 h-10 bg-slate-900 dark:bg-white rounded-lg flex items-center justify-center transition-colors duration-300">
                    <svg class="w-6 h-6 text-white dark:text-slate-900 transition-colors duration-300" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4.318 6.318a4.5 4.5 0 000 6.364L12 20.364l7.682-7.682a4.5 4.5 0 00-6.364-6.364L12 7.636l-1.318-1.318a4.5 4.5 0 00-6.364 0z"/>
                    </svg>
                </div>
                <span class="text-xl font-bold text-slate-900 dark:text-white transition-colors duration-300">MediCare Portal</span>
            </div>

            <!-- Navigation Links -->
            <div class="hidden md:flex items-center gap-8">
                <a href="#features" class="text-slate-600 dark:text-slate-300 hover:text-slate-900 dark:hover:text-white transition-colors">Features</a>
                <a href="#benefits" class="text-slate-600 dark:text-slate-300 hover:text-slate-900 dark:hover:text-white transition-colors">Benefits</a>
                <a href="#security" class="text-slate-600 dark:text-slate-300 hover:text-slate-900 dark:hover:text-white transition-colors">Security</a>
                <a href="#contact" class="text-slate-600 dark:text-slate-300 hover:text-slate-900 dark:hover:text-white transition-colors">Contact</a>
            </div>

            <div class="flex items-center gap-4">
                <a href="login" class="btn-primary px-6 py-2 rounded-lg font-semibold">
                    Sign In
                </a>
                <a href="register" class="bg-primary text-white dark:text-white border-2 border-primary dark:border-white hover:bg-white hover:text-primary dark:hover:bg-white dark:hover:text-slate-900 px-5 py-1.5 rounded-lg font-semibold transition-colors duration-300">
                    Register
                </a>
            </div>
        </div>
    </div>
</nav>

<!-- Hero Section -->
<section class="relative overflow-hidden bg-gradient-to-b from-slate-50 to-white dark:from-slate-800 dark:to-slate-900 py-20 sm:py-32 transition-colors duration-300">
    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div class="grid lg:grid-cols-2 gap-12 items-center">
            <!-- Left Content -->
            <div class="space-y-8">
                <div class="inline-flex items-center gap-2 px-4 py-2 bg-sky-50 dark:bg-sky-900/30 rounded-full border border-sky-200 dark:border-sky-700 transition-colors duration-300">
                    <span class="w-2 h-2 bg-sky-500 rounded-full animate-pulse"></span>
                    <span class="text-sm font-medium text-sky-900 dark:text-sky-300 transition-colors duration-300">HIPAA Compliant Platform</span>
                </div>

                <h1 class="text-5xl sm:text-6xl font-bold text-slate-900 dark:text-white leading-tight text-balance transition-colors duration-300">
                    Modern Healthcare Management Platform
                </h1>

                <p class="text-xl text-slate-600 dark:text-slate-300 leading-relaxed transition-colors duration-300">
                    Streamline patient care, manage appointments, and collaborate with your healthcare team in a secure, enterprise-grade platform designed for modern medical practices.
                </p>

                <div class="flex flex-col sm:flex-row gap-4">
                    <a href="login.html" class="btn-primary px-8 py-4 rounded-lg font-semibold text-center">
                        Get Started
                    </a>
                    <a href="#features" class="btn-secondary px-8 py-4 rounded-lg font-semibold text-center">
                        Learn More
                    </a>
                </div>

                <!-- Stats -->
                <div class="grid grid-cols-3 gap-8 pt-8 border-t border-slate-200 dark:border-slate-700 transition-colors duration-300">
                    <div>
                        <div class="text-3xl font-bold text-slate-900 dark:text-white transition-colors duration-300">10K+</div>
                        <div class="text-sm text-slate-600 dark:text-slate-400 transition-colors duration-300">Healthcare Providers</div>
                    </div>
                    <div>
                        <div class="text-3xl font-bold text-slate-900 dark:text-white transition-colors duration-300">500K+</div>
                        <div class="text-sm text-slate-600 dark:text-slate-400 transition-colors duration-300">Patients Served</div>
                    </div>
                    <div>
                        <div class="text-3xl font-bold text-slate-900 dark:text-white transition-colors duration-300">99.9%</div>
                        <div class="text-sm text-slate-600 dark:text-slate-400 transition-colors duration-300">Uptime</div>
                    </div>
                </div>
            </div>

            <!-- Right Image/Visual -->
            <div class="relative">
                <div class="relative bg-slate-900 dark:bg-slate-800 rounded-2xl shadow-2xl overflow-hidden transition-colors duration-300">
                    <img src="https://cdn-dynmedia-1.microsoft.com/is/image/microsoftcorp/752x580_MSFT_Security_Insider_Healthcare_Ransomware_Report?resMode=sharp2&op_usm=1.5,0.65,15,0&wid=752&hei=580&qlt=100&fmt=png-alpha&fit=constrain" alt="MediCare Dashboard" class="w-full h-auto">
                </div>
                <!-- Floating Cards -->
                <div class="absolute -top-4 -left-4 bg-white dark:bg-slate-800 rounded-xl shadow-lg p-4 border border-slate-200 dark:border-slate-700 transition-colors duration-300">
                    <div class="flex items-center gap-3">
                        <div class="w-10 h-10 bg-green-100 dark:bg-green-900/30 rounded-full flex items-center justify-center transition-colors duration-300">
                            <svg class="w-5 h-5 text-green-600 dark:text-green-400 transition-colors duration-300" fill="currentColor" viewBox="0 0 20 20">
                                <path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd"/>
                            </svg>
                        </div>
                        <div>
                            <div class="text-sm font-semibold text-slate-900 dark:text-white transition-colors duration-300">Appointment Confirmed</div>
                            <div class="text-xs text-slate-600 dark:text-slate-400 transition-colors duration-300">Dr. Smith - 2:00 PM</div>
                        </div>
                    </div>
                </div>
                <div class="absolute -bottom-4 -right-4 bg-white dark:bg-slate-800 rounded-xl shadow-lg p-4 border border-slate-200 dark:border-slate-700 transition-colors duration-300">
                    <div class="flex items-center gap-3">
                        <div class="w-10 h-10 bg-blue-100 dark:bg-blue-900/30 rounded-full flex items-center justify-center transition-colors duration-300">
                            <svg class="w-5 h-5 text-blue-600 dark:text-blue-400 transition-colors duration-300" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12h6m-6 4h6m2 5H7a2 2 0 01-2-2V5a2 2 0 012-2h5.586a1 1 0 01.707.293l5.414 5.414a1 1 0 01.293.707V19a2 2 0 01-2 2z"/>
                            </svg>
                        </div>
                        <div>
                            <div class="text-sm font-semibold text-slate-900 dark:text-white transition-colors duration-300">New Lab Results</div>
                            <div class="text-xs text-slate-600 dark:text-slate-400 transition-colors duration-300">3 reports available</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Features Section -->
<section id="features" class="py-20 bg-white dark:bg-slate-900 transition-colors duration-300">
    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div class="text-center space-y-4 mb-16">
            <h2 class="text-4xl font-bold text-slate-900 dark:text-white transition-colors duration-300">Powerful Features for Modern Healthcare</h2>
            <p class="text-xl text-slate-600 dark:text-slate-300 max-w-2xl mx-auto transition-colors duration-300">
                Everything you need to manage your practice efficiently and provide exceptional patient care.
            </p>
        </div>

        <div class="grid md:grid-cols-2 lg:grid-cols-3 gap-8">
            <!-- Feature 1 -->
            <div class="feature-card bg-white dark:bg-slate-800 rounded-xl p-6 border border-slate-200 dark:border-slate-700 shadow-sm transition-colors duration-300">
                <div class="w-12 h-12 bg-blue-100 dark:bg-blue-900/30 rounded-lg flex items-center justify-center mb-4 transition-colors duration-300">
                    <svg class="w-6 h-6 text-blue-600 dark:text-blue-400 transition-colors duration-300" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 4.354a4 4 0 110 5.292M15 21H3v-1a6 6 0 0112 0v1zm0 0h6v-1a6 6 0 00-9-5.197M13 7a4 4 0 11-8 0 4 4 0 018 0z"/>
                    </svg>
                </div>
                <h3 class="text-xl font-bold text-slate-900 dark:text-white mb-2 transition-colors duration-300">Patient Management</h3>
                <p class="text-slate-600 dark:text-slate-300 leading-relaxed transition-colors duration-300">
                    Comprehensive patient records, medical history, and treatment plans all in one secure location.
                </p>
            </div>

            <!-- Feature 2 -->
            <div class="feature-card bg-white dark:bg-slate-800 rounded-xl p-6 border border-slate-200 dark:border-slate-700 shadow-sm transition-colors duration-300">
                <div class="w-12 h-12 bg-green-100 dark:bg-green-900/30 rounded-lg flex items-center justify-center mb-4 transition-colors duration-300">
                    <svg class="w-6 h-6 text-green-600 dark:text-green-400 transition-colors duration-300" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M8 7V3m8 4V3m-9 8h10M5 21h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v12a2 2 0 002 2z"/>
                    </svg>
                </div>
                <h3 class="text-xl font-bold text-slate-900 dark:text-white mb-2 transition-colors duration-300">Appointment Scheduling</h3>
                <p class="text-slate-600 dark:text-slate-300 leading-relaxed transition-colors duration-300">
                    Smart scheduling system with automated reminders and calendar integration for seamless booking.
                </p>
            </div>

            <!-- Feature 3 -->
            <div class="feature-card bg-white dark:bg-slate-800 rounded-xl p-6 border border-slate-200 dark:border-slate-700 shadow-sm transition-colors duration-300">
                <div class="w-12 h-12 bg-purple-100 dark:bg-purple-900/30 rounded-lg flex items-center justify-center mb-4 transition-colors duration-300">
                    <svg class="w-6 h-6 text-purple-600 dark:text-purple-400 transition-colors duration-300" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12h6m-6 4h6m2 5H7a2 2 0 01-2-2V5a2 2 0 012-2h5.586a1 1 0 01.707.293l5.414 5.414a1 1 0 01.293.707V19a2 2 0 01-2 2z"/>
                    </svg>
                </div>
                <h3 class="text-xl font-bold text-slate-900 dark:text-white mb-2 transition-colors duration-300">Electronic Health Records</h3>
                <p class="text-slate-600 dark:text-slate-300 leading-relaxed transition-colors duration-300">
                    Digital EHR system with real-time updates, lab results, and prescription management.
                </p>
            </div>

            <!-- Feature 4 -->
            <div class="feature-card bg-white dark:bg-slate-800 rounded-xl p-6 border border-slate-200 dark:border-slate-700 shadow-sm transition-colors duration-300">
                <div class="w-12 h-12 bg-orange-100 dark:bg-orange-900/30 rounded-lg flex items-center justify-center mb-4 transition-colors duration-300">
                    <svg class="w-6 h-6 text-orange-600 dark:text-orange-400 transition-colors duration-300" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 19v-6a2 2 0 00-2-2H5a2 2 0 00-2 2v6a2 2 0 002 2h2a2 2 0 002-2zm0 0V9a2 2 0 012-2h2a2 2 0 012 2v10m-6 0a2 2 0 002 2h2a2 2 0 002-2m0 0V5a2 2 0 012-2h2a2 2 0 012 2v14a2 2 0 01-2 2h-2a2 2 0 01-2-2z"/>
                    </svg>
                </div>
                <h3 class="text-xl font-bold text-slate-900 dark:text-white mb-2 transition-colors duration-300">Analytics & Reporting</h3>
                <p class="text-slate-600 dark:text-slate-300 leading-relaxed transition-colors duration-300">
                    Detailed insights into practice performance, patient outcomes, and operational efficiency.
                </p>
            </div>

            <!-- Feature 5 -->
            <div class="feature-card bg-white dark:bg-slate-800 rounded-xl p-6 border border-slate-200 dark:border-slate-700 shadow-sm transition-colors duration-300">
                <div class="w-12 h-12 bg-red-100 dark:bg-red-900/30 rounded-lg flex items-center justify-center mb-4 transition-colors duration-300">
                    <svg class="w-6 h-6 text-red-600 dark:text-red-400 transition-colors duration-300" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 15v2m-6 4h12a2 2 0 002-2v-6a2 2 0 00-2-2H6a2 2 0 00-2 2v6a2 2 0 002 2zm10-10V7a4 4 0 00-8 0v4h8z"/>
                    </svg>
                </div>
                <h3 class="text-xl font-bold text-slate-900 dark:text-white mb-2 transition-colors duration-300">HIPAA Compliance</h3>
                <p class="text-slate-600 dark:text-slate-300 leading-relaxed transition-colors duration-300">
                    Enterprise-grade security with end-to-end encryption and full HIPAA compliance certification.
                </p>
            </div>

            <!-- Feature 6 -->
            <div class="feature-card bg-white dark:bg-slate-800 rounded-xl p-6 border border-slate-200 dark:border-slate-700 shadow-sm transition-colors duration-300">
                <div class="w-12 h-12 bg-teal-100 dark:bg-teal-900/30 rounded-lg flex items-center justify-center mb-4 transition-colors duration-300">
                    <svg class="w-6 h-6 text-teal-600 dark:text-teal-400 transition-colors duration-300" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17 8h2a2 2 0 012 2v6a2 2 0 01-2 2h-2v4l-4-4H9a1.994 1.994 0 01-1.414-.586m0 0L11 14h4a2 2 0 002-2V6a2 2 0 00-2-2H5a2 2 0 00-2 2v6a2 2 0 002 2h2v4l.586-.586z"/>
                    </svg>
                </div>
                <h3 class="text-xl font-bold text-slate-900 dark:text-white mb-2 transition-colors duration-300">Team Collaboration</h3>
                <p class="text-slate-600 dark:text-slate-300 leading-relaxed transition-colors duration-300">
                    Secure messaging, file sharing, and real-time collaboration tools for your healthcare team.
                </p>
            </div>
        </div>
    </div>
</section>

<!-- Benefits Section -->
<section id="benefits" class="py-20 bg-slate-50 dark:bg-slate-800 transition-colors duration-300">
    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div class="grid lg:grid-cols-2 gap-12 items-center">
            <!-- Left Image -->
            <div class="relative">
                <img src="https://www.usbank.com/dam/en/images/photos/corporate-and-commercial-banking/photo-illus-healthcare-banner-1x1.jpeg" alt="Healthcare Team" class="rounded-2xl shadow-xl">
            </div>

            <!-- Right Content -->
            <div class="space-y-6">
                <h2 class="text-4xl font-bold text-slate-900 dark:text-white transition-colors duration-300">Why Healthcare Providers Choose MediCare</h2>
                <p class="text-lg text-slate-600 dark:text-slate-300 leading-relaxed transition-colors duration-300">
                    Join thousands of healthcare professionals who trust MediCare Portal to streamline their practice and improve patient outcomes.
                </p>

                <div class="space-y-4">
                    <div class="flex items-start gap-4">
                        <div class="w-6 h-6 bg-sky-500 rounded-full flex items-center justify-center flex-shrink-0 mt-1">
                            <svg class="w-4 h-4 text-white" fill="currentColor" viewBox="0 0 20 20">
                                <path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd"/>
                            </svg>
                        </div>
                        <div>
                            <h3 class="text-lg font-semibold text-slate-900 dark:text-white transition-colors duration-300">Save Time & Reduce Costs</h3>
                            <p class="text-slate-600 dark:text-slate-300 transition-colors duration-300">Automate administrative tasks and reduce paperwork by up to 70%.</p>
                        </div>
                    </div>

                    <div class="flex items-start gap-4">
                        <div class="w-6 h-6 bg-sky-500 rounded-full flex items-center justify-center flex-shrink-0 mt-1">
                            <svg class="w-4 h-4 text-white" fill="currentColor" viewBox="0 0 20 20">
                                <path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd"/>
                            </svg>
                        </div>
                        <div>
                            <h3 class="text-lg font-semibold text-slate-900 dark:text-white transition-colors duration-300">Improve Patient Satisfaction</h3>
                            <p class="text-slate-600 dark:text-slate-300 transition-colors duration-300">Provide better care with instant access to complete patient histories.</p>
                        </div>
                    </div>

                    <div class="flex items-start gap-4">
                        <div class="w-6 h-6 bg-sky-500 rounded-full flex items-center justify-center flex-shrink-0 mt-1">
                            <svg class="w-4 h-4 text-white" fill="currentColor" viewBox="0 0 20 20">
                                <path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd"/>
                            </svg>
                        </div>
                        <div>
                            <h3 class="text-lg font-semibold text-slate-900 dark:text-white transition-colors duration-300">Scale Your Practice</h3>
                            <p class="text-slate-600 dark:text-slate-300 transition-colors duration-300">Grow your practice with tools that scale from solo practitioners to large clinics.</p>
                        </div>
                    </div>

                    <div class="flex items-start gap-4">
                        <div class="w-6 h-6 bg-sky-500 rounded-full flex items-center justify-center flex-shrink-0 mt-1">
                            <svg class="w-4 h-4 text-white" fill="currentColor" viewBox="0 0 20 20">
                                <path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd"/>
                            </svg>
                        </div>
                        <div>
                            <h3 class="text-lg font-semibold text-slate-900 dark:text-white transition-colors duration-300">24/7 Support</h3>
                            <p class="text-slate-600 dark:text-slate-300 transition-colors duration-300">Get help whenever you need it with our dedicated support team.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Security Section -->
<section id="security" class="py-20 bg-white dark:bg-slate-900 transition-colors duration-300">
    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div class="text-center space-y-4 mb-16">
            <h2 class="text-4xl font-bold text-slate-900 dark:text-white transition-colors duration-300">Enterprise-Grade Security</h2>
            <p class="text-xl text-slate-600 dark:text-slate-300 max-w-2xl mx-auto transition-colors duration-300">
                Your patients' data is protected with the highest security standards in the industry.
            </p>
        </div>

        <div class="grid md:grid-cols-4 gap-8">
            <div class="text-center space-y-3">
                <div class="w-16 h-16 bg-slate-900 dark:bg-white rounded-xl flex items-center justify-center mx-auto transition-colors duration-300">
                    <svg class="w-8 h-8 text-white dark:text-slate-900 transition-colors duration-300" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 15v2m-6 4h12a2 2 0 002-2v-6a2 2 0 00-2-2H6a2 2 0 00-2 2v6a2 2 0 002 2zm10-10V7a4 4 0 00-8 0v4h8z"/>
                    </svg>
                </div>
                <h3 class="text-lg font-bold text-slate-900 dark:text-white transition-colors duration-300">256-bit Encryption</h3>
                <p class="text-sm text-slate-600 dark:text-slate-400 transition-colors duration-300">Bank-level encryption for all data</p>
            </div>

            <div class="text-center space-y-3">
                <div class="w-16 h-16 bg-slate-900 dark:bg-white rounded-xl flex items-center justify-center mx-auto transition-colors duration-300">
                    <svg class="w-8 h-8 text-white dark:text-slate-900 transition-colors duration-300" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12l2 2 4-4m5.618-4.016A11.955 11.955 0 0112 2.944a11.955 11.955 0 01-8.618 3.04A12.02 12.02 0 003 9c0 5.591 3.824 10.29 9 11.622 5.176-1.332 9-6.03 9-11.622 0-1.042-.133-2.052-.382-3.016z"/>
                    </svg>
                </div>
                <h3 class="text-lg font-bold text-slate-900 dark:text-white transition-colors duration-300">HIPAA Certified</h3>
                <p class="text-sm text-slate-600 dark:text-slate-400 transition-colors duration-300">Full compliance with healthcare regulations</p>
            </div>

            <div class="text-center space-y-3">
                <div class="w-16 h-16 bg-slate-900 dark:bg-white rounded-xl flex items-center justify-center mx-auto transition-colors duration-300">
                    <svg class="w-8 h-8 text-white dark:text-slate-900 transition-colors duration-300" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 7v10c0 2.21 3.582 4 8 4s8-1.79 8-4V7M4 7c0 2.21 3.582 4 8 4s8-1.79 8-4M4 7c0-2.21 3.582-4 8-4s8 1.79 8 4m0 5c0 2.21-3.582 4-8 4s-8-1.79-8-4"/>
                    </svg>
                </div>
                <h3 class="text-lg font-bold text-slate-900 dark:text-white transition-colors duration-300">Daily Backups</h3>
                <p class="text-sm text-slate-600 dark:text-slate-400 transition-colors duration-300">Automatic backups with disaster recovery</p>
            </div>

            <div class="text-center space-y-3">
                <div class="w-16 h-16 bg-slate-900 dark:bg-white rounded-xl flex items-center justify-center mx-auto transition-colors duration-300">
                    <svg class="w-8 h-8 text-white dark:text-slate-900 transition-colors duration-300" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 12a3 3 0 11-6 0 3 3 0 016 0z"/>
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M2.458 12C3.732 7.943 7.523 5 12 5c4.478 0 8.268 2.943 9.542 7-1.274 4.057-5.064 7-9.542 7-4.477 0-8.268-2.943-9.542-7z"/>
                    </svg>
                </div>
                <h3 class="text-lg font-bold text-slate-900 dark:text-white transition-colors duration-300">Audit Logs</h3>
                <p class="text-sm text-slate-600 dark:text-slate-400 transition-colors duration-300">Complete activity tracking and monitoring</p>
            </div>
        </div>
    </div>
</section>

<!-- CTA Section -->
<section id="contact" class="py-20 bg-slate-900 dark:bg-slate-950 transition-colors duration-300">
    <div class="max-w-4xl mx-auto px-4 sm:px-6 lg:px-8 text-center space-y-8">
        <h2 class="text-4xl font-bold text-white">Ready to Transform Your Practice?</h2>
        <p class="text-xl text-slate-300 dark:text-slate-400 transition-colors duration-300">
            Join thousands of healthcare providers who trust MediCare Portal for their practice management needs.
        </p>
        <div class="flex flex-col sm:flex-row gap-4 justify-center">
            <a href="login" class="bg-white text-slate-900 px-8 py-4 rounded-lg font-semibold hover:bg-slate-100 transition-colors">
                Start Free Trial
            </a>
            <a href="#" class="border-2 border-white text-white px-8 py-4 rounded-lg font-semibold hover:bg-white hover:text-slate-900 transition-colors">
                Schedule Demo
            </a>
        </div>
        <p class="text-sm text-slate-400 dark:text-slate-500 transition-colors duration-300">
            No credit card required • 14-day free trial • Cancel anytime
        </p>
    </div>
</section>

<!-- Footer -->
<footer class="bg-slate-950 dark:bg-black text-slate-400 py-12 transition-colors duration-300">
    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div class="grid md:grid-cols-4 gap-8 mb-8">
            <div class="space-y-4">
                <div class="flex items-center gap-2">
                    <div class="w-8 h-8 bg-white rounded-lg flex items-center justify-center">
                        <svg class="w-5 h-5 text-slate-900" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4.318 6.318a4.5 4.5 0 000 6.364L12 20.364l7.682-7.682a4.5 4.5 0 00-6.364-6.364L12 7.636l-1.318-1.318a4.5 4.5 0 00-6.364 0z"/>
                        </svg>
                    </div>
                    <span class="text-white font-bold">MediCare Portal</span>
                </div>
                <p class="text-sm">
                    Modern healthcare management platform for medical professionals.
                </p>
            </div>

            <div>
                <h3 class="text-white font-semibold mb-4">Product</h3>
                <ul class="space-y-2 text-sm">
                    <li><a href="#" class="hover:text-white transition-colors">Features</a></li>
                    <li><a href="#" class="hover:text-white transition-colors">Pricing</a></li>
                    <li><a href="#" class="hover:text-white transition-colors">Security</a></li>
                    <li><a href="#" class="hover:text-white transition-colors">Integrations</a></li>
                </ul>
            </div>

            <div>
                <h3 class="text-white font-semibold mb-4">Company</h3>
                <ul class="space-y-2 text-sm">
                    <li><a href="#" class="hover:text-white transition-colors">About</a></li>
                    <li><a href="#" class="hover:text-white transition-colors">Blog</a></li>
                    <li><a href="#" class="hover:text-white transition-colors">Careers</a></li>
                    <li><a href="#" class="hover:text-white transition-colors">Contact</a></li>
                </ul>
            </div>

            <div>
                <h3 class="text-white font-semibold mb-4">Legal</h3>
                <ul class="space-y-2 text-sm">
                    <li><a href="#" class="hover:text-white transition-colors">Privacy Policy</a></li>
                    <li><a href="#" class="hover:text-white transition-colors">Terms of Service</a></li>
                    <li><a href="#" class="hover:text-white transition-colors">HIPAA Compliance</a></li>
                    <li><a href="#" class="hover:text-white transition-colors">Cookie Policy</a></li>
                </ul>
            </div>
        </div>

        <div class="border-t border-slate-800 dark:border-slate-900 pt-8 flex flex-col sm:flex-row justify-between items-center gap-4 transition-colors duration-300">
            <p class="text-sm">© 2025 MediCare Portal. All rights reserved.</p>
            <div class="flex gap-6">
                <a href="#" class="hover:text-white transition-colors">
                    <svg class="w-5 h-5" fill="currentColor" viewBox="0 0 24 24">
                        <path d="M24 4.557c-.883.392-1.832.656-2.828.775 1.017-.609 1.798-1.574 2.165-2.724-.951.564-2.005.974-3.127 1.195-.897-.957-2.178-1.555-3.594-1.555-3.179 0-5.515 2.966-4.797 6.045-4.091-.205-7.719-2.165-10.148-5.144-1.29 2.213-.669 5.108 1.523 6.574-.806-.026-1.566-.247-2.229-.616-.054 2.281 1.581 4.415 3.949 4.89-.693.188-1.452.232-2.224.084.626 1.956 2.444 3.379 4.6 3.419-2.07 1.623-4.678 2.348-7.29 2.04 2.179 1.397 4.768 2.212 7.548 2.212 9.142 0 14.307-7.721 13.995-14.646.962-.695 1.797-1.562 2.457-2.549z"/>
                    </svg>
                </a>
                <a href="#" class="hover:text-white transition-colors">
                    <svg class="w-5 h-5" fill="currentColor" viewBox="0 0 24 24">
                        <path d="M12 0c-6.626 0-12 5.373-12 12 0 5.302 3.438 9.8 8.207 11.387.599.111.793-.261.793-.577v-2.234c-3.338.726-4.033-1.416-4.033-1.416-.546-1.387-1.333-1.756-1.333-1.756-1.089-.745.083-.729.083-.729 1.205.084 1.839 1.237 1.839 1.237 1.07 1.834 2.807 1.304 3.492.997.107-.775.418-1.305.762-1.604-2.665-.305-5.467-1.334-5.467-5.931 0-1.311.469-2.381 1.236-3.221-.124-.303-.535-1.524.117-3.176 0 0 1.008-.322 3.301 1.23.957-.266 1.983-.399 3.003-.404 1.02.005 2.047.138 3.006.404 2.291-1.552 3.297-1.23 3.297-1.23.653 1.653.242 2.874.118 3.176.77.84 1.235 1.911 1.235 3.221 0 4.609-2.807 5.624-5.479 5.921.43.372.823 1.102.823 2.222v3.293c0 .319.192.694.801.576 4.765-1.589 8.199-6.086 8.199-11.386 0-6.627-5.373-12-12-12z"/>
                    </svg>
                </a>
                <a href="#" class="hover:text-white transition-colors">
                    <svg class="w-5 h-5" fill="currentColor" viewBox="0 0 24 24">
                        <path d="M20.447 20.452h-3.554v-5.569c0-1.328-.027-3.037-1.852-3.037-1.853 0-2.136 1.445-2.136 2.939v5.667H9.351V9h3.414v1.561h.046c.477-.9 1.637-1.85 3.37-1.85 3.601 0 4.267 2.37 4.267 5.455v6.286zM5.337 7.433c-1.144 0-2.063-.926-2.063-2.065 0-1.138.92-2.063 2.063-2.063 1.14 0 2.064.925 2.064 2.063 0 1.139-.925 2.065-2.064 2.065zm1.782 13.019H3.555V9h3.564v11.452zM22.225 0H1.771C.792 0 0 .774 0 1.729v20.542C0 23.227.792 24 1.771 24h20.451C23.2 24 24 23.227 24 22.271V1.729C24 .774 23.2 0 22.222 0h.003z"/>
                    </svg>
                </a>
            </div>
        </div>
    </div>
</footer>

</body>
</html>
