num_files=$1
branch_name=b$num_files
git co -b $branch_name
python codegen.py $num_files
git add .
git commit -m $branch_name
git push origin $branch_name
