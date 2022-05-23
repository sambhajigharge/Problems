 #! /bin/bash -x

echo "1. Addition"
echo "2. Subtraction"
echo "3. Miltiplication"
echo "4. Division"
read a b c

case  $c in 
          1)echo "sum $((a + b))" ;;
          2)echo "substraction $((a - b))" ;;
          3)echo "multiplication $((a * b))" ;; 
          4)echo "division $((a / b))" ;;
          *) echo "enter valid operation"
esac
