<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../Includes/header.jsp"%>
<body>

<!-- Navigation -->
<nav>
    <div>
        <div>
            <!-- Logo -->
            <div>
                <div>
                    <!-- SVG removed -->
                </div>
                <span>MediCare Portal</span>
                <span>/ Nurse Dashboard</span>
            </div>

            <!-- User Info and Logout -->
            <div>
                <span>Welcome, Nurse ${user.fullName}</span>
                <a href="logout">Logout</a>
            </div>
        </div>
    </div>
</nav>

<!-- Main Content -->
<main>
    <div>
        <h1>Nurse Dashboard</h1>

        <!-- Stats Overview -->
        <div>
            <div>
                <div>
                    <h2>Patients in Queue</h2>
                    <!-- SVG removed -->
                </div>
                <div>8</div>
                <p>Total patients waiting</p>
            </div>
            <div>
                <div>
                    <h2>Appointments Today</h2>
                    <!-- SVG removed -->
                </div>
                <div>12</div>
                <p>Scheduled for today</p>
            </div>
            <div>
                <div>
                    <h2>New Admissions</h2>
                    <!-- SVG removed -->
                </div>
                <div>3</div>
                <p>Patients admitted today</p>
            </div>
        </div>

        <!-- Quick Actions -->
        <div>
            <a href="#">
                <div>
                    <!-- SVG removed -->
                </div>
                <h3>Admit Patient</h3>
                <p>Search for existing or register new patients.</p>
            </a>
            <a href="#">
                <div>
                    <!-- SVG removed -->
                </div>
                <h3>View Today's Patients</h3>
                <p>See all scheduled and waiting patients.</p>
            </a>
            <a href="#">
                <div>
                    <!-- SVG removed -->
                </div>
                <h3>Manage Vital Signs</h3>
                <p>Update patient vital statistics.</p>
            </a>
        </div>

        <!-- Admit Patient Section -->
        <div id="admitPatientSection">
            <h2>Admit Patient</h2>

            <!-- Search for Patient Form -->
            <form action="search-patient" method="POST">
                <label for="ssnSearch">Search by SSN:</label>
                <input type="text" id="ssnSearch" name="ssn" placeholder="Enter patient SSN">
                <button type="submit">Search Patient</button>
            </form>

            <div id="existingPatientForm" class="${not empty patient ? "": "hidden"}">
                <h3>
                    Patient Found: ${patient.firstName} ${patient.lastName}
                    (SSN : ${patient.socialSecurityNumber})
                </h3>
                <form action="enter-vitals" method="POST">
                    <input type="hidden" name="patientId" value="${patient.id}">
                    <div>
                        <label for="temperature">Temperature (°C):</label>
                        <input type="number" step="0.1" id="temperature" name="temperature" required>
                    </div>
                    <div>
                        <label for="bloodPressure">Blood Pressure (mmHg):</label>
                        <input type="text" id="bloodPressure" name="bloodPressure" placeholder="e.g., 120/80" required>
                    </div>
                    <div>
                        <label for="heartRate">Heart Rate (bpm):</label>
                        <input type="number" id="heartRate" name="heartRate" required>
                    </div>

                    <div>
                        <label for="respiratoryRate">Respiratory Rate (breaths/min):</label>
                        <input type="number" id="respiratoryRate" name="respiratoryRate" required>
                    </div>

                    <div>
                        <label for="height">Height (cm):</label>
                        <input type="number" step="0.1" id="height" name="height" required>
                    </div>

                    <div>
                        <label for="weight">Weight (kg):</label>
                        <input type="number" step="0.1" id="weight" name="weight" required>
                    </div>

                    <button type="submit">Save Vitals & Add to Queue</button>
                </form>

            </div>


            <!-- New Patient Form -->
            <div id="newPatientForm" class="${not empty patient ? "hidden": ""}">
                <h3>New Patient Registration</h3>
                <form action="register-patient" method="POST">
                    <div>
                        <label for="firstName">First Name:</label>
                        <input type="text" id="firstName" name="firstName" required>
                    </div>

                    <div>
                        <label for="lastName">Last Name:</label>
                        <input type="text" id="lastName" name="lastName" required>
                    </div>

                    <div>
                        <label for="birthdate">Birthdate:</label>
                        <input type="date" id="birthdate" name="birthdate" required>
                    </div>

                    <div>
                        <label for="newSsn">SSN:</label>
                        <input type="text" id="newSsn" name="ssn" required>
                    </div>

                    <div>
                        <label for="phone">Phone:</label>
                        <input type="tel" id="phone" name="phone" required>
                    </div>

                    <div>
                        <label for="address">Address:</label>
                        <input type="text" id="address" name="address" required>
                    </div>

                    <div>
                        <label for="insurance">Insurance:</label>
                        <input type="text" id="insurance" name="insurance" required>
                    </div>

                    <div>
                        <label for="medicalHistory">Medical History:</label>
                        <textarea id="medicalHistory" name="medicalHistory" placeholder="e.g., No major medical history, previous surgeries, chronic conditions..." required></textarea>
                    </div>

                    <div>
                        <label for="allergies">Allergies:</label>
                        <textarea id="allergies" name="allergies" placeholder="Peanuts, Lactose..." required></textarea>
                    </div>

                    <button type="submit">Register & Add to Queue</button>
                </form>
            </div>
        </div>

        <!-- Waiting Queue List -->
        <div>
            <h2>Waiting Queue</h2>
            <ul>
                <%
                    // Iterate over waiting patients
                %>
                <li>
                    <div>
                        <span><%= "patient.getFullName()" %></span>
                        <span>SSN: <%= "patient.getMaskedSSN()" %> • Arrived: <%= "patient.getArrivalTime()" %></span>
                    </div>
                    <a href="/nurse/patient-details?id=<%= "patient.getId()" %>">View Details</a>
                </li>
                <li>No patients currently in the waiting queue.</li>
            </ul>
            <div>
                <a href="/nurse/full-queue">View Full Queue</a>
            </div>
        </div>
    </div>
</main>

<!-- Footer -->
<footer>
    &copy; 2025 MediCare Portal. All rights reserved.
</footer>

</body>
