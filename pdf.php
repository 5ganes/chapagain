<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.5/jspdf.debug.js"></script>
<script type="text/javascript">
    function generatePDF(){
        // Default export is a4 paper, portrait, using milimeters for units
        var doc = new jsPDF()

        doc.text('Hello world!', 10, 10)
        doc.save('a4.pdf');
    }
</script>
<input type="button" value="Generate PDF" onclick="generatePDF()">