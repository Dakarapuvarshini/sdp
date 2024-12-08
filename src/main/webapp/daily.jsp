 @GetMapping("/daily-farmers")
    public String getDailyFarmers(Model model) {
        List<Farmer> dailyFarmers = farmerService.getDailyFarmers();
        model.addAttribute("farmers", dailyFarmers);
        return "dailyFarmers"; // This should correspond to `dailyFarmers.jsp`
    }