
<%@ include file="../Includes/header.jsp" %>
<body class="bg-slate-50 dark:bg-slate-900 transition-colors duration-300 min-h-screen flex flex-col">

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
                <span class="text-xl font-bold text-slate-500 dark:text-slate-400 transition-colors duration-300 ml-4">/ Specialist Dashboard</span>
            </div>

            <!-- User Info and Logout -->
            <div class="flex items-center gap-4">
                <span class="text-slate-600 dark:text-slate-300 text-sm font-medium">Welcome, Dr. Chen (Cardiologist)</span>
                <a href="/logout" class="btn-secondary px-4 py-1.5 rounded-lg font-semibold">
                    Logout
                </a>
            </div>
        </div>
    </div>
</nav>

<!-- Main Content -->
<main class="flex-grow max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-8">
    <div class="space-y-8">
        <h1 class="text-3xl font-bold text-slate-900 dark:text-white transition-colors duration-300">Specialist Dashboard</h1>

        <!-- Stats Overview -->
        <div class="grid md:grid-cols-3 gap-6">
            <div class="bg-white dark:bg-slate-800 rounded-xl p-6 shadow transition-colors duration-300">
                <div class="flex items-center justify-between mb-4">
                    <h2 class="text-lg font-semibold text-slate-900 dark:text-white">New Expertise Requests</h2>
                    <svg class="w-6 h-6 text-orange-500" fill="currentColor" viewBox="0 0 20 20"><path fill-rule="evenodd" d="M18 8a6 6 0 01-7.743 5.743L10 14l-2 2-2 2H2v-.293a6.002 6.002 0 0113.447-4.103C15.548 9.947 16 9 16 9c-1.554-.863-3.08-2.02-4.52-3.414A5.992 5.992 0 0118 8zM15 10a3 3 0 11-6 0 3 3 0 016 0z" clip-rule="evenodd"></path></svg>
                </div>
                <div class="text-4xl font-bold text-slate-900 dark:text-white">2</div>
                <p class="text-sm text-slate-600 dark:text-slate-400">Awaiting your review</p>
            </div>
            <div class="bg-white dark:bg-slate-800 rounded-xl p-6 shadow transition-colors duration-300">
                <div class="flex items-center justify-between mb-4">
                    <h2 class="text-lg font-semibold text-slate-900 dark:text-white">Completed Responses</h2>
                    <svg class="w-6 h-6 text-green-500" fill="currentColor" viewBox="0 0 20 20"><path fill-rule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zm3.707-9.293a1 1 0 00-1.414-1.414L9 10.586 7.707 9.293a1 1 0 00-1.414 1.414l2 2a1 1 0 001.414 0l4-4z" clip-rule="evenodd"></path></svg>
                </div>
                <div class="text-4xl font-bold text-slate-900 dark:text-white">15</div>
                <p class="text-sm text-slate-600 dark:text-slate-400">This week</p>
            </div>
            <div class="bg-white dark:bg-slate-800 rounded-xl p-6 shadow transition-colors duration-300">
                <div class="flex items-center justify-between mb-4">
                    <h2 class="text-lg font-semibold text-slate-900 dark:text-white">Patient Cases Reviewed</h2>
                    <svg class="w-6 h-6 text-blue-500" fill="currentColor" viewBox="0 0 20 20"><path d="M9 6a3 3 0 11-6 0 3 3 0 016 0zM17.555 12.333a10.02 10.02 0 01-3.666 4.334A6.992 6.992 0 0110 18c-.808 0-1.597-.11-2.355-.333a10.02 10.02 0 01-3.666-4.334C2.556 11.222 2 10.111 2 9c0-3.313 2.687-6 6-6s6 2.687 6 6c0 1.111-.556 2.222-1.445 3.333zM10 10a3 3 0 100-6 3 3 0 000 6z"></path></svg>
                </div>
                <div class="text-4xl font-bold text-slate-900 dark:text-white">28</div>
                <p class="text-sm text-slate-600 dark:text-slate-400">Total this month</p>
            </div>
        </div>

        <!-- Quick Actions -->
        <div class="grid md:grid-cols-2 lg:grid-cols-2 gap-6">
            <a href="#" class="feature-card bg-white dark:bg-slate-800 rounded-xl p-6 shadow border border-slate-200 dark:border-slate-700 flex flex-col items-center text-center gap-3 group">
                <div class="w-16 h-16 bg-red-100 dark:bg-red-900/30 rounded-full flex items-center justify-center transition-colors duration-300">
                    <svg class="w-8 h-8 text-red-600 dark:text-red-400" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 12a3 3 0 11-6 0 3 3 0 016 0z"></path><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M2.458 12C3.732 7.943 7.523 5 12 5c4.478 0 8.268 2.943 9.542 7-1.274 4.057-5.064 7-9.542 7-4.477 0-8.268-2.943-9.542-7z"></path></svg>
                </div>
                <h3 class="text-xl font-semibold text-slate-900 dark:text-white group-hover:text-sky-500">View Pending Expertise Requests</h3>
                <p class="text-slate-600 dark:text-slate-300 text-sm">Review and provide medical opinions.</p>
            </a>
            <a href="#" class="feature-card bg-white dark:bg-slate-800 rounded-xl p-6 shadow border border-slate-200 dark:border-slate-700 flex flex-col items-center text-center gap-3 group">
                <div class="w-16 h-16 bg-green-100 dark:bg-green-900/30 rounded-full flex items-center justify-center transition-colors duration-300">
                    <svg class="w-8 h-8 text-green-600 dark:text-green-400" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5H7a2 2 0 00-2 2v12a2 2 0 002 2h10a2 2 0 002-2V7a2 2 0 00-2-2h-2M9 5a2 2 0 002 2h2a2 2 0 002-2M9 5a2 2 0 012-2h2a2 2 0 012 2m-3 7h3m-3 4h3m-6-4h.01M9 16h.01"></path></svg>
                </div>
                <h3 class="text-xl font-semibold text-slate-900 dark:text-white group-hover:text-sky-500">Review My Responses</h3>
                <p class="text-slate-600 dark:text-slate-300 text-sm">Access previously submitted expertise opinions.</p>
            </a>
        </div>

        <!-- Recent Expertise Requests List (dynamic data from JSP/backend) -->
        <div class="bg-white dark:bg-slate-800 rounded-xl p-6 shadow transition-colors duration-300">
            <h2 class="text-2xl font-bold text-slate-900 dark:text-white mb-6">Recent Expertise Requests</h2>
            <ul class="divide-y divide-slate-200 dark:divide-slate-700">
                <%
                    // List<ExpertiseRequest> pendingRequests = (List<ExpertiseRequest>) request.getAttribute("pendingExpertiseRequests");
                    // if (pendingRequests != null) {
                    //     for (ExpertiseRequest request : pendingRequests) {
                %>
                <li class="flex items-center justify-between py-4">
                    <div class="flex flex-col">
                        <span class="font-semibold text-slate-900 dark:text-white">Patient: <%= "request.getPatientName()" %> (Requested by <%= "request.getGpName()" %>)</span>
                        <span class="text-sm text-slate-600 dark:text-slate-400">Specialty: <%= "request.getSpecialty()" %> • Status: <%= "request.getStatus()" %></span>
                    </div>
                    <% // Conditional button based on status %>
                    <% // if ("PENDING".equals(request.getStatus())) { %>
                    <a href="/specialist/review-expertise?id=<%= "request.getId()" %>" class="btn-primary px-4 py-2 text-sm rounded-lg">Review Request</a>
                    <% // } else { %>
                    <a href="/specialist/view-response?id=<%= "request.getId()" %>" class="text-sky-600 dark:text-sky-400 hover:underline text-sm">View Response</a>
                    <% // } %>
                </li>
                <%
                    //     }
                    // } else {
                %>
                <li class="py-4 text-slate-600 dark:text-slate-400">No new expertise requests at this time.</li>
                <%
                    // }
                %>
            </ul>
            <div class="mt-6 text-center">
                <a href="/specialist/all-expertise-requests" class="btn-primary px-6 py-3 rounded-lg font-semibold">View All Expertise Requests</a>
            </div>
        </div>

        <!-- Hypothetical Expertise Response Form (on a separate page or modal triggered by "Review Request" link) -->
        <div id="expertiseResponseSection" class="bg-white dark:bg-slate-800 rounded-xl p-6 shadow transition-colors duration-300 mt-8">
            <h2 class="text-2xl font-bold text-slate-900 dark:text-white mb-6">Respond to Expertise Request</h2>

            <%
                // ExpertiseRequest currentRequest = (ExpertiseRequest) request.getAttribute("currentExpertiseRequest");
                // if (currentRequest != null) {
            %>
            <div class="mb-6 p-4 border border-slate-200 dark:border-slate-700 rounded-lg">
                <h3 class="text-xl font-semibold text-slate-900 dark:text-white mb-2">Patient: <%= "currentRequest.getPatientName()" %></h3>
                <p class="text-slate-700 dark:text-slate-300 mb-2">**Requested by:** <%= "currentRequest.getGpName()" %></p>
                <p class="text-slate-700 dark:text-slate-300 mb-2">**Original Question:** <%= "currentRequest.getQuestion()" %></p>
                <p class="text-sm text-slate-600 dark:text-slate-400">Requested on: <%= "currentRequest.getRequestDate()" %></p>
            </div>

            <form action="/specialist/save-expertise-response" method="POST" class="space-y-4">
                <input type="hidden" name="requestId" value="<%= "currentRequest.getId()" %>">
                <div>
                    <label for="medicalOpinion" class="block text-sm font-medium text-slate-700 dark:text-slate-300">Medical Opinion & Recommendations:</label>
                    <textarea id="medicalOpinion" name="medicalOpinion" rows="8" required class="block w-full px-4 py-2 border border-slate-300 rounded-lg dark:bg-slate-700 dark:text-white dark:border-slate-600 focus:ring-sky-500 focus:border-sky-500"></textarea>
                </div>
                <button type="submit" class="btn-primary px-5 py-2 rounded-lg font-semibold">Submit Response</button>
            </form>
            <%
                // } else {
            %>
            <p class="text-slate-600 dark:text-slate-400">No expertise request selected for review.</p>
            <%
                // }
            %>
        </div>

        <!-- Hypothetical Expertise Response Form (on a separate page or modal triggered by "Review Request" link) -->
        <div class="bg-white dark:bg-slate-800 rounded-xl p-6 shadow transition-colors duration-300 mt-8">
            <h2 class="text-2xl font-bold text-slate-900 dark:text-white mb-6">Respond to Expertise Request</h2>

            <%
                // ExpertiseRequest currentRequest = (ExpertiseRequest) request.getAttribute("currentExpertiseRequest");
                // if (currentRequest != null) {
            %>
            <div class="mb-6 p-4 border border-slate-200 dark:border-slate-700 rounded-lg">
                <h3 class="text-xl font-semibold text-slate-900 dark:text-white mb-2">Patient: <%= "currentRequest.getPatientName()" %></h3>
                <p class="text-slate-700 dark:text-slate-300 mb-2">**Requested by:** <%= "currentRequest.getGpName()" %></p>
                <p class="text-slate-700 dark:text-slate-300 mb-2">**Original Question:** <%= "currentRequest.getQuestion()" %></p>
                <p class="text-sm text-slate-600 dark:text-slate-400">Requested on: <%= "currentRequest.getRequestDate()" %></p>
            </div>

            <form action="/specialist/save-expertise-response" method="POST" class="space-y-4">
                <input type="hidden" name="requestId" value="<%= "currentRequest.getId()" %>">
                <div>
                    <label for="medicalOpinion" class="block text-sm font-medium text-slate-700 dark:text-slate-300">Medical Opinion & Recommendations:</label>
                    <textarea name="medicalOpinion" rows="8" required class="block w-full px-4 py-2 border border-slate-300 rounded-lg dark:bg-slate-700 dark:text-white dark:border-slate-600 focus:ring-sky-500 focus:border-sky-500"></textarea>
                </div>
                <button type="submit" class="btn-primary px-5 py-2 rounded-lg font-semibold">Submit Response</button>
            </form>
            <%
                // } else {
            %>
            <p class="text-slate-600 dark:text-slate-400">No expertise request selected for review.</p>
            <%
                // }
            %>
        </div>
    </div>
</main>

<!-- Footer (simplified for dashboards, optional) -->
<footer class="bg-white dark:bg-slate-900 border-t border-slate-200 dark:border-slate-700 py-6 text-center text-sm text-slate-600 dark:text-slate-400 transition-colors duration-300 mt-auto">
    &copy; 2025 MediCare Portal. All rights reserved.
</footer>

</body>