<?php
// Include database connection
include('includes/database_connect.php'); // Change this to your actual DB connection file

// / Fetch cities from the database
$query = "SELECT name FROM cities";
$result = mysqli_query($conn, $query);

if (!$result) {
    echo "Error fetching cities: " . mysqli_error($conn);
    exit(); // Stop script execution
}
?>

<div class="footer">
    <div class="page-container footer-container">
        <div class="footer-cities">
            <?php
            // Check if cities are available
            if (mysqli_num_rows($result) > 0) {
                $count = 0; // Counter for tracking the number of cities
                // Loop through the cities and create links
                while ($row = mysqli_fetch_assoc($result)) {
                    $cityName = htmlspecialchars($row['name']); // Safe for HTML
                    $citySlug = urlencode($cityName); // URL encode the city name
                    echo "<div class='footer-city'>
                            <a href='property_list.php?city={$citySlug}'>PG in {$cityName}</a>
                          </div>";
                    $count++;
                    // Check if four cities have been added, then start a new row
                    if ($count % 4 == 0) {
                        echo "<div class='clearfix'></div>";
                    }
                }
            } else {
                echo "<div class='footer-city'>No cities available</div>";
            }

            // Free the result set
            mysqli_free_result($result);

            // Close the database connection
            mysqli_close($conn);
            ?>
        </div>
        <div class="footer-copyright">© 2020 Copyright PG Life</div>
    </div>
</div>

<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/common.js"></script>

<!-- Add the following CSS in your style file or within a <style> block -->
<style>
.footer-cities {
    display: flex;
    flex-wrap: wrap;
    gap: 10px; /* Adjust the gap between city items */
}

.footer-city {
    flex: 1 1 22%; /* Adjust the width of each item to fit four per row */
    box-sizing: border-box;
}

.clearfix {
    clear: both;
}
</style>