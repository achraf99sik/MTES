<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MediCare Portal - Dashboard</title>
    <script src="https://cdn.jsdelivr.net/npm/@tailwindcss/browser@4"></script>
    <style type="text/tailwindcss">
        @theme inline {
            --color-background: #0a0a0a;
            --color-surface: #141414;
            --color-surface-elevated: #1a1a1a;
            --color-border: #262626;
            --color-text-primary: #fafafa;
            --color-text-secondary: #a3a3a3;
            --color-text-muted: #737373;
            --color-primary: #3b82f6;
            --color-primary-hover: #2563eb;
            --color-success: #10b981;
            --color-warning: #f59e0b;
            --color-danger: #ef4444;
            --color-chart-blue: #3b82f6;
            --color-chart-green: #10b981;
            --color-chart-purple: #8b5cf6;
            --color-chart-orange: #f97316;
            --radius: 0.75rem;
        }

        .stat-card {
            background: var(--color-surface);
            border: 1px solid var(--color-border);
            border-radius: var(--radius);
            transition: all 0.2s;
        }

        .stat-card:hover {
            background: var(--color-surface-elevated);
            border-color: #333;
        }

        .nav-item {
            transition: all 0.2s;
            border-radius: 0.5rem;
        }

        .nav-item:hover {
            background: var(--color-surface-elevated);
        }

        .nav-item.active {
            background: var(--color-surface-elevated);
            color: var(--color-primary);
        }

        .chart-bar {
            background: linear-gradient(to top, var(--color-primary), #60a5fa);
            border-radius: 0.25rem;
            transition: all 0.3s;
        }

        .chart-bar:hover {
            opacity: 0.8;
        }

        .badge {
            display: inline-flex;
            align-items: center;
            padding: 0.25rem 0.625rem;
            border-radius: 9999px;
            font-size: 0.75rem;
            font-weight: 500;
        }

        .badge-success {
            background: rgba(16, 185, 129, 0.1);
            color: var(--color-success);
        }

        .badge-warning {
            background: rgba(245, 158, 11, 0.1);
            color: var(--color-warning);
        }

        .badge-danger {
            background: rgba(239, 68, 68, 0.1);
            color: var(--color-danger);
        }

        .badge-primary {
            background: rgba(59, 130, 246, 0.1);
            color: var(--color-primary);
        }
    </style>
</head>
<body class="min-h-screen bg-[var(--color-background)] text-[var(--color-text-primary)]">
<div class="flex h-screen overflow-hidden">
    <aside class="w-64 bg-[var(--color-surface)] border-r border-[var(--color-border)] flex flex-col">
        <div class="p-6 border-b border-[var(--color-border)]">
            <div class="flex items-center gap-3">
                <div class="w-10 h-10 bg-[var(--color-primary)] rounded-lg flex items-center justify-center">
                    <svg class="w-6 h-6 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4.318 6.318a4.5 4.5 0 000 6.364L12 20.364l7.682-7.682a4.5 4.5 0 00-6.364-6.364L12 7.636l-1.318-1.318a4.5 4.5 0 00-6.364 0z"/>
                    </svg>
                </div>
                <span class="text-lg font-bold">MediCare Portal</span>
            </div>
        </div>

        <nav class="flex-1 p-4 space-y-1">
            <a href="#" class="nav-item active flex items-center gap-3 px-3 py-2.5 text-sm">
                <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6a2 2 0 012-2h2a2 2 0 012 2v2a2 2 0 01-2 2H6a2 2 0 01-2-2V6zM14 6a2 2 0 012-2h2a2 2 0 012 2v2a2 2 0 01-2 2h-2a2 2 0 01-2-2V6zM4 16a2 2 0 012-2h2a2 2 0 012 2v2a2 2 0 01-2 2H6a2 2 0 01-2-2v-2zM14 16a2 2 0 012-2h2a2 2 0 012 2v2a2 2 0 01-2 2h-2a2 2 0 01-2-2v-2z"/>
                </svg>
                Overview
            </a>
            <a href="#" class="nav-item flex items-center gap-3 px-3 py-2.5 text-sm text-[var(--color-text-secondary)]">
                <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 4.354a4 4 0 110 5.292M15 21H3v-1a6 6 0 0112 0v1zm0 0h6v-1a6 6 0 00-9-5.197M13 7a4 4 0 11-8 0 4 4 0 018 0z"/>
                </svg>
                Patients
            </a>
            <a href="#" class="nav-item flex items-center gap-3 px-3 py-2.5 text-sm text-[var(--color-text-secondary)]">
                <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M8 7V3m8 4V3m-9 8h10M5 21h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v12a2 2 0 002 2z"/>
                </svg>
                Appointments
            </a>
            <a href="#" class="nav-item flex items-center gap-3 px-3 py-2.5 text-sm text-[var(--color-text-secondary)]">
                <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12h6m-6 4h6m2 5H7a2 2 0 01-2-2V5a2 2 0 012-2h5.586a1 1 0 01.707.293l5.414 5.414a1 1 0 01.293.707V19a2 2 0 01-2 2z"/>
                </svg>
                Medical Records
            </a>
            <a href="#" class="nav-item flex items-center gap-3 px-3 py-2.5 text-sm text-[var(--color-text-secondary)]">
                <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 19v-6a2 2 0 00-2-2H5a2 2 0 00-2 2v6a2 2 0 002 2h2a2 2 0 002-2zm0 0V9a2 2 0 012-2h2a2 2 0 012 2v10m-6 0a2 2 0 002 2h2a2 2 0 002-2m0 0V5a2 2 0 012-2h2a2 2 0 012 2v14a2 2 0 01-2 2h-2a2 2 0 01-2-2z"/>
                </svg>
                Analytics
            </a>
            <a href="#" class="nav-item flex items-center gap-3 px-3 py-2.5 text-sm text-[var(--color-text-secondary)]">
                <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M10.325 4.317c.426-1.756 2.924-1.756 3.35 0a1.724 1.724 0 002.573 1.066c1.543-.94 3.31.826 2.37 2.37a1.724 1.724 0 001.065 2.572c1.756.426 1.756 2.924 0 3.35a1.724 1.724 0 00-1.066 2.573c.94 1.543-.826 3.31-2.37 2.37a1.724 1.724 0 00-2.572 1.065c-.426 1.756-2.924 1.756-3.35 0a1.724 1.724 0 00-2.573-1.066c-1.543.94-3.31-.826-2.37-2.37a1.724 1.724 0 00-1.065-2.572c-1.756-.426-1.756-2.924 0-3.35a1.724 1.724 0 001.066-2.573c-.94-1.543.826-3.31 2.37-2.37.996.608 2.296.07 2.572-1.065z"/>
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 12a3 3 0 11-6 0 3 3 0 016 0z"/>
                </svg>
                Settings
            </a>
        </nav>

        <div class="p-4 border-t border-[var(--color-border)]">
            <div class="flex items-center gap-3 px-3 py-2">
                <div class="w-10 h-10 rounded-full bg-[var(--color-primary)] flex items-center justify-center text-sm font-semibold">
                    DR
                </div>
                <div class="flex-1 min-w-0">
                    <p class="text-sm font-medium truncate">Dr. Sarah Johnson</p>
                    <p class="text-xs text-[var(--color-text-muted)] truncate">Cardiologist</p>
                </div>
            </div>
        </div>
    </aside>

    <main class="flex-1 overflow-y-auto">
        <header class="bg-[var(--color-surface)] border-b border-[var(--color-border)] px-8 py-4">
            <div class="flex items-center justify-between">
                <div>
                    <h1 class="text-2xl font-bold">Dashboard</h1>
                    <p class="text-sm text-[var(--color-text-secondary)] mt-1">Welcome back, Dr. Johnson</p>
                </div>
                <div class="flex items-center gap-3">
                    <button class="px-4 py-2 bg-[var(--color-surface-elevated)] border border-[var(--color-border)] rounded-lg text-sm hover:bg-[#222] transition-colors">
                        Last 7 days
                    </button>
                    <button class="p-2 bg-[var(--color-surface-elevated)] border border-[var(--color-border)] rounded-lg hover:bg-[#222] transition-colors">
                        <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 17h5l-1.405-1.405A2.032 2.032 0 0118 14.158V11a6.002 6.002 0 00-4-5.659V5a2 2 0 10-4 0v.341C7.67 6.165 6 8.388 6 11v3.159c0 .538-.214 1.055-.595 1.436L4 17h5m6 0v1a3 3 0 11-6 0v-1m6 0H9"/>
                        </svg>
                    </button>
                </div>
            </div>
        </header>

        <div class="p-8 space-y-6">
            <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-6">
                <div class="stat-card p-6">
                    <div class="flex items-center justify-between mb-4">
                        <div class="w-10 h-10 rounded-lg bg-blue-500/10 flex items-center justify-center">
                            <svg class="w-5 h-5 text-blue-500" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 4.354a4 4 0 110 5.292M15 21H3v-1a6 6 0 0112 0v1zm0 0h6v-1a6 6 0 00-9-5.197M13 7a4 4 0 11-8 0 4 4 0 018 0z"/>
                            </svg>
                        </div>
                        <span class="text-xs text-green-500 flex items-center gap-1">
                                <svg class="w-3 h-3" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 10l7-7m0 0l7 7m-7-7v18"/>
                                </svg>
                                12%
                            </span>
                    </div>
                    <h3 class="text-3xl font-bold mb-1">1,284</h3>
                    <p class="text-sm text-[var(--color-text-secondary)]">Total Patients</p>
                </div>

                <div class="stat-card p-6">
                    <div class="flex items-center justify-between mb-4">
                        <div class="w-10 h-10 rounded-lg bg-green-500/10 flex items-center justify-center">
                            <svg class="w-5 h-5 text-green-500" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M8 7V3m8 4V3m-9 8h10M5 21h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v12a2 2 0 002 2z"/>
                            </svg>
                        </div>
                        <span class="text-xs text-green-500 flex items-center gap-1">
                                <svg class="w-3 h-3" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 10l7-7m0 0l7 7m-7-7v18"/>
                                </svg>
                                8%
                            </span>
                    </div>
                    <h3 class="text-3xl font-bold mb-1">24</h3>
                    <p class="text-sm text-[var(--color-text-secondary)]">Appointments Today</p>
                </div>

                <div class="stat-card p-6">
                    <div class="flex items-center justify-between mb-4">
                        <div class="w-10 h-10 rounded-lg bg-orange-500/10 flex items-center justify-center">
                            <svg class="w-5 h-5 text-orange-500" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12h6m-6 4h6m2 5H7a2 2 0 01-2-2V5a2 2 0 012-2h5.586a1 1 0 01.707.293l5.414 5.414a1 1 0 01.293.707V19a2 2 0 01-2 2z"/>
                            </svg>
                        </div>
                        <span class="text-xs text-red-500 flex items-center gap-1">
                                <svg class="w-3 h-3" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 14l-7 7m0 0l-7-7m7 7V3"/>
                                </svg>
                                3%
                            </span>
                    </div>
                    <h3 class="text-3xl font-bold mb-1">18</h3>
                    <p class="text-sm text-[var(--color-text-secondary)]">Pending Reviews</p>
                </div>

                <div class="stat-card p-6">
                    <div class="flex items-center justify-between mb-4">
                        <div class="w-10 h-10 rounded-lg bg-purple-500/10 flex items-center justify-center">
                            <svg class="w-5 h-5 text-purple-500" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 8c-1.657 0-3 .895-3 2s1.343 2 3 2 3 .895 3 2-1.343 2-3 2m0-8c1.11 0 2.08.402 2.599 1M12 8V7m0 1v8m0 0v1m0-1c-1.11 0-2.08-.402-2.599-1M21 12a9 9 0 11-18 0 9 9 0 0118 0z"/>
                            </svg>
                        </div>
                        <span class="text-xs text-green-500 flex items-center gap-1">
                                <svg class="w-3 h-3" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 10l7-7m0 0l7 7m-7-7v18"/>
                                </svg>
                                15%
                            </span>
                    </div>
                    <h3 class="text-3xl font-bold mb-1">$48.2K</h3>
                    <p class="text-sm text-[var(--color-text-secondary)]">Revenue This Month</p>
                </div>
            </div>

            <div class="grid grid-cols-1 lg:grid-cols-2 gap-6">
                <div class="stat-card p-6">
                    <div class="flex items-center justify-between mb-6">
                        <div>
                            <h3 class="text-lg font-semibold">Patient Visits</h3>
                            <p class="text-sm text-[var(--color-text-secondary)] mt-1">Weekly overview</p>
                        </div>
                        <button class="text-sm text-[var(--color-text-secondary)] hover:text-[var(--color-text-primary)]">
                            View all
                        </button>
                    </div>
                    <div class="flex items-end justify-between h-48 gap-3">
                        <div class="flex-1 flex flex-col items-center gap-2">
                            <div class="w-full chart-bar" style="height: 60%"></div>
                            <span class="text-xs text-[var(--color-text-muted)]">Mon</span>
                        </div>
                        <div class="flex-1 flex flex-col items-center gap-2">
                            <div class="w-full chart-bar" style="height: 75%"></div>
                            <span class="text-xs text-[var(--color-text-muted)]">Tue</span>
                        </div>
                        <div class="flex-1 flex flex-col items-center gap-2">
                            <div class="w-full chart-bar" style="height: 85%"></div>
                            <span class="text-xs text-[var(--color-text-muted)]">Wed</span>
                        </div>
                        <div class="flex-1 flex flex-col items-center gap-2">
                            <div class="w-full chart-bar" style="height: 70%"></div>
                            <span class="text-xs text-[var(--color-text-muted)]">Thu</span>
                        </div>
                        <div class="flex-1 flex flex-col items-center gap-2">
                            <div class="w-full chart-bar" style="height: 90%"></div>
                            <span class="text-xs text-[var(--color-text-muted)]">Fri</span>
                        </div>
                        <div class="flex-1 flex flex-col items-center gap-2">
                            <div class="w-full chart-bar" style="height: 45%"></div>
                            <span class="text-xs text-[var(--color-text-muted)]">Sat</span>
                        </div>
                        <div class="flex-1 flex flex-col items-center gap-2">
                            <div class="w-full chart-bar" style="height: 30%"></div>
                            <span class="text-xs text-[var(--color-text-muted)]">Sun</span>
                        </div>
                    </div>
                </div>

                <div class="stat-card p-6">
                    <div class="flex items-center justify-between mb-6">
                        <div>
                            <h3 class="text-lg font-semibold">Department Distribution</h3>
                            <p class="text-sm text-[var(--color-text-secondary)] mt-1">Patient allocation</p>
                        </div>
                    </div>
                    <div class="space-y-4">
                        <div>
                            <div class="flex items-center justify-between mb-2">
                                <span class="text-sm">Cardiology</span>
                                <span class="text-sm font-semibold">342</span>
                            </div>
                            <div class="w-full h-2 bg-[var(--color-surface-elevated)] rounded-full overflow-hidden">
                                <div class="h-full bg-blue-500 rounded-full" style="width: 68%"></div>
                            </div>
                        </div>
                        <div>
                            <div class="flex items-center justify-between mb-2">
                                <span class="text-sm">Neurology</span>
                                <span class="text-sm font-semibold">256</span>
                            </div>
                            <div class="w-full h-2 bg-[var(--color-surface-elevated)] rounded-full overflow-hidden">
                                <div class="h-full bg-green-500 rounded-full" style="width: 51%"></div>
                            </div>
                        </div>
                        <div>
                            <div class="flex items-center justify-between mb-2">
                                <span class="text-sm">Orthopedics</span>
                                <span class="text-sm font-semibold">198</span>
                            </div>
                            <div class="w-full h-2 bg-[var(--color-surface-elevated)] rounded-full overflow-hidden">
                                <div class="h-full bg-purple-500 rounded-full" style="width: 39%"></div>
                            </div>
                        </div>
                        <div>
                            <div class="flex items-center justify-between mb-2">
                                <span class="text-sm">Pediatrics</span>
                                <span class="text-sm font-semibold">167</span>
                            </div>
                            <div class="w-full h-2 bg-[var(--color-surface-elevated)] rounded-full overflow-hidden">
                                <div class="h-full bg-orange-500 rounded-full" style="width: 33%"></div>
                            </div>
                        </div>
                        <div>
                            <div class="flex items-center justify-between mb-2">
                                <span class="text-sm">General Medicine</span>
                                <span class="text-sm font-semibold">321</span>
                            </div>
                            <div class="w-full h-2 bg-[var(--color-surface-elevated)] rounded-full overflow-hidden">
                                <div class="h-full bg-cyan-500 rounded-full" style="width: 64%"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="grid grid-cols-1 lg:grid-cols-3 gap-6">
                <div class="lg:col-span-2 stat-card p-6">
                    <div class="flex items-center justify-between mb-6">
                        <h3 class="text-lg font-semibold">Upcoming Appointments</h3>
                        <button class="text-sm text-[var(--color-primary)] hover:text-[var(--color-primary-hover)]">
                            View all
                        </button>
                    </div>
                    <div class="space-y-4">
                        <div class="flex items-center gap-4 p-4 bg-[var(--color-surface-elevated)] rounded-lg border border-[var(--color-border)]">
                            <div class="w-12 h-12 rounded-full bg-blue-500/10 flex items-center justify-center text-sm font-semibold text-blue-500">
                                JD
                            </div>
                            <div class="flex-1 min-w-0">
                                <h4 class="font-medium">John Doe</h4>
                                <p class="text-sm text-[var(--color-text-secondary)]">Regular Checkup</p>
                            </div>
                            <div class="text-right">
                                <p class="text-sm font-medium">10:00 AM</p>
                                <span class="badge badge-success mt-1">Confirmed</span>
                            </div>
                        </div>

                        <div class="flex items-center gap-4 p-4 bg-[var(--color-surface-elevated)] rounded-lg border border-[var(--color-border)]">
                            <div class="w-12 h-12 rounded-full bg-green-500/10 flex items-center justify-center text-sm font-semibold text-green-500">
                                SM
                            </div>
                            <div class="flex-1 min-w-0">
                                <h4 class="font-medium">Sarah Miller</h4>
                                <p class="text-sm text-[var(--color-text-secondary)]">Follow-up Consultation</p>
                            </div>
                            <div class="text-right">
                                <p class="text-sm font-medium">11:30 AM</p>
                                <span class="badge badge-warning mt-1">Pending</span>
                            </div>
                        </div>

                        <div class="flex items-center gap-4 p-4 bg-[var(--color-surface-elevated)] rounded-lg border border-[var(--color-border)]">
                            <div class="w-12 h-12 rounded-full bg-purple-500/10 flex items-center justify-center text-sm font-semibold text-purple-500">
                                RJ
                            </div>
                            <div class="flex-1 min-w-0">
                                <h4 class="font-medium">Robert Johnson</h4>
                                <p class="text-sm text-[var(--color-text-secondary)]">Lab Results Review</p>
                            </div>
                            <div class="text-right">
                                <p class="text-sm font-medium">2:00 PM</p>
                                <span class="badge badge-success mt-1">Confirmed</span>
                            </div>
                        </div>

                        <div class="flex items-center gap-4 p-4 bg-[var(--color-surface-elevated)] rounded-lg border border-[var(--color-border)]">
                            <div class="w-12 h-12 rounded-full bg-orange-500/10 flex items-center justify-center text-sm font-semibold text-orange-500">
                                EB
                            </div>
                            <div class="flex-1 min-w-0">
                                <h4 class="font-medium">Emily Brown</h4>
                                <p class="text-sm text-[var(--color-text-secondary)]">Initial Consultation</p>
                            </div>
                            <div class="text-right">
                                <p class="text-sm font-medium">3:30 PM</p>
                                <span class="badge badge-primary mt-1">New Patient</span>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="stat-card p-6">
                    <h3 class="text-lg font-semibold mb-6">Quick Actions</h3>
                    <div class="space-y-3">
                        <button class="w-full px-4 py-3 bg-[var(--color-primary)] hover:bg-[var(--color-primary-hover)] text-white rounded-lg text-sm font-medium transition-colors flex items-center justify-center gap-2">
                            <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 4v16m8-8H4"/>
                            </svg>
                            New Appointment
                        </button>
                        <button class="w-full px-4 py-3 bg-[var(--color-surface-elevated)] hover:bg-[#222] border border-[var(--color-border)] rounded-lg text-sm font-medium transition-colors flex items-center justify-center gap-2">
                            <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 4v16m8-8H4"/>
                            </svg>
                            Add Patient
                        </button>
                        <button class="w-full px-4 py-3 bg-[var(--color-surface-elevated)] hover:bg-[#222] border border-[var(--color-border)] rounded-lg text-sm font-medium transition-colors flex items-center justify-center gap-2">
                            <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12h6m-6 4h6m2 5H7a2 2 0 01-2-2V5a2 2 0 012-2h5.586a1 1 0 01.707.293l5.414 5.414a1 1 0 01.293.707V19a2 2 0 01-2 2z"/>
                            </svg>
                            Create Report
                        </button>
                        <button class="w-full px-4 py-3 bg-[var(--color-surface-elevated)] hover:bg-[#222] border border-[var(--color-border)] rounded-lg text-sm font-medium transition-colors flex items-center justify-center gap-2">
                            <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M8 7V3m8 4V3m-9 8h10M5 21h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v12a2 2 0 002 2z"/>
                            </svg>
                            View Calendar
                        </button>
                    </div>

                    Recent Activity
                    <div class="mt-8">
                        <h4 class="text-sm font-semibold mb-4">Recent Activity</h4>
                        <div class="space-y-4">
                            <div class="flex gap-3">
                                <div class="w-2 h-2 rounded-full bg-green-500 mt-1.5 flex-shrink-0"></div>
                                <div>
                                    <p class="text-sm">New patient registered</p>
                                    <p class="text-xs text-[var(--color-text-muted)] mt-0.5">2 minutes ago</p>
                                </div>
                            </div>
                            <div class="flex gap-3">
                                <div class="w-2 h-2 rounded-full bg-blue-500 mt-1.5 flex-shrink-0"></div>
                                <div>
                                    <p class="text-sm">Lab results uploaded</p>
                                    <p class="text-xs text-[var(--color-text-muted)] mt-0.5">15 minutes ago</p>
                                </div>
                            </div>
                            <div class="flex gap-3">
                                <div class="w-2 h-2 rounded-full bg-orange-500 mt-1.5 flex-shrink-0"></div>
                                <div>
                                    <p class="text-sm">Appointment rescheduled</p>
                                    <p class="text-xs text-[var(--color-text-muted)] mt-0.5">1 hour ago</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
</div>
</body>
</html>

