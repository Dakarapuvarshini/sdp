<div class="container">
    <h2 class="text-center mb-4">Add New Product</h2>

    <!-- Success message -->
    <c:if test="${not empty successMessage}">
        <div class="alert alert-success text-center">
            ${successMessage}
        </div>
    </c:if>

    <form action="/products" method="post" enctype="multipart/form-data">
        <!-- Form Fields... -->
    </form>
</div>
