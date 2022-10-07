Merging Meeting Times

Write a function merge_ranges() that takes a list of multiple meeting time ranges and returns a list of condensed ranges.

For example, given:

  [(0, 1), (3, 5), (4, 8), (10, 12), (9, 10)]

your function would return:

  [(0, 1), (3, 8), (9, 12)]



Sort the list by the first element in the tuples

Set start_time_1 = start time in the first tuple
Set end_time_1 = end time in the first tuple 
Create a new list to store the result tuple

While going over every tuple starting from the second one:

Get the start_time_2, end_time_2

If end_time_1 < start_time_2:
	add (start_time_1, end_time_1 ) to the result list
	start-time_1 = start_time_2
	end_time_1 = end_time_2
Else:
	end_time_1 = max(end_time_1, end_time_2)


def merge_ranges(input):
    input.sort()
    start_time_1 = input[0][0]
    end_time_1 = input[0][1]
    result = []
    for x in range(1,len(input)):
        start_time_2, end_time_2 = input[x]
        if end_time_1 < start_time_2:
            result.append((start_time_1, end_time_1))
            start_time_1 = start_time_2
            end_time_1 = end_time_2
        else:
            end_time_1 = max(end_time_1, end_time_2)
            print(end_time_1)
    result.append((start_time_1,end_time_1))

    return result

print(merge_ranges([(1, 3), (2, 4)]))












def merge_meeting(input):
    input.sort();
    result = []
    start_time_1, end_time_1 = input[0]
    for x in range(1,len(input)-1):
        start_time_2, end_time_2 = input[x]
        if end_time_1 < start_time_2:
            result.append((start_time_1, end_time_1))
            print("-")
            start_time_1 = start_time_2
            end_time_1 = end_time_2
        else:
            end_time_1 = max(end_time_1, end_time_2)

            # if x == len(input)-1:
    result.append((start_time_2, end_time_2))
    return result

print(merge_meeting([(0, 1), (3, 5), (4, 8), (10, 12), (9, 10)]))



def merge_meeting(input):
    input.sort();
    result = []
    start_time_1, end_time_1 = input[0]
    for x in range(1,len(input)):
        start_time_2, end_time_2 = input[x]
        if end_time_1 < start_time_2:
            result.append((start_time_1, end_time_1))
            start_time_1 = start_time_2
            end_time_1 = end_time_2
        else:
            end_time_1 = max(end_time_1, end_time_2)

        if x==len(input)-1:
            result.append((start_time_1, end_time_1))

            # if x == len(input)-1:
    # result.append((start_time_1, end_time_1))
    return result

print(merge_meeting([(0, 1), (3, 5), (4, 8), (10, 12), (9, 10)]))










