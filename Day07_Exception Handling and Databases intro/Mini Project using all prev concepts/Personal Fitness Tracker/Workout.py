class Workout:
    def __init__(self, date, workout, time, calories):
        self.date = date
        self.workout = workout
        self.time = time
        self.calories = calories
    def update_workout(self, date, workout, time, calories):
        self.date = date
        self.workout = workout
        self.time = time
        self.calories = calories