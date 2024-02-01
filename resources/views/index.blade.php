<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Meta tags and other head elements as provided -->

    <!-- Link to Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">

    <!-- Link to Google Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500&display=swap" rel="stylesheet">

    <!-- Beacon script -->
    <script defer src="https://static.cloudflareinsights.com/beacon.min.js" data-cf-beacon='{"token": "709e73436f0a4503b38d4a4e98dd7ec9"}'></script>

    <!-- Link to the main JavaScript bundle -->
    <script defer src="build/bundle.js"></script>

    <!-- JavaScript for fetching and updating data -->
    <script>
        async function fetchData() {
            try {
                const response = await fetch('http://127.0.0.1:8000/api/v1/admin/getdata');
                const data = await response.json();
                //console.log(data.data[1].name)
                return data.data[0].name;
            } catch (error) {
                console.error('Error fetching data:', error);
                return 'Error fetching data';
            }
        }

        function updateQuote() {
            const quoteContainer = document.getElementById('quote-container');

            // Fetch data and update the quote
            fetchData().then((quote) => {
                quoteContainer.textContent = quote;
            });
        }

        document.addEventListener('DOMContentLoaded', function() {
            // Initial data load
            updateQuote();

            // Add event listener for the refresh button
            const refreshButton = document.getElementById('refresh-button');
            refreshButton.addEventListener('click', updateQuote);
        });
    </script>
</head>

<body>
    <!-- Placeholder content -->
    <header class="container mt-4">
        <h1>Welcome to quotes world</h1>
    </header>

    <main class="container mt-4">
        <div id="quote-box" class="jumbotron">
            <p id="quote-container" class="lead">Loading quote...</p>
            <button id="refresh-button" class="btn btn-primary">Refresh</button>
        </div>
    </main>

    <footer class="container mt-4">
        <p>© 2024 suraj. All rights reserved.</p>
    </footer>

    <!-- Link to Bootstrap JS and Popper.js -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>

</html>
