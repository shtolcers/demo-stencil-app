clean='false'
while getopts 'c' flag; do
  case "${flag}" in
    c) clean='true' ;;
  esac
done


echo "Build Component1 (dist)..."
cd ./test-component 
if $clean; then
    echo "Clean install & build"
    rm -rf loader node_modules dist
fi
npm install && npm run build

echo "Build Component2 (dist-custom-elements)... "
cd ../test-component2 
if $clean; then
    echo "Clean install & build"
    rm -rf loader node_modules dist
fi
npm install && npm run build

echo "Serve both components..."
cd ..
npx http-server