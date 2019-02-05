for file in `ls *.txt`
    do
            linenumber=`(wc -l <$file)`

            if [[ $linenumber -lt  1 ]]
            then
            {
                rm -rf $file
            }

            elif [[ $linenumber -lt 10 ]]
            then
                {
                    mv $file short_$file
                }

            elif [[ $linenumber -ge 10 && $val -le 20 ]]
            then
                {
                    mv $file medium_$file
                }

            else
                {
                    mv $file long_$file
                }

            fi
done

echo "Work Done!!"

