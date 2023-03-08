clean='false'
install='false'
while getopts 'ci' flag; do
  case "${flag}" in
    c) clean='true' ;;
    i) install='true' ;;
  esac
done


cd ./test-component 
echo "[dist] Component"
if $clean; then
    echo "Cleaning..."
    rm -rf loader node_modules dist www
fi
if $install; then
    echo "Install & build"
    npm install && npm run build
fi

cd ../test-component1 
echo "[dist] Component1 w/ local state"
if $clean; then
    echo "Cleaning..."
    rm -rf loader node_modules dist www
fi
if $install; then
    echo "Install & build"
    npm install && npm run build
fi


cd ../test-component2 
echo "[dist-custom-elements] Component2 w/ local state"
if $clean; then
    echo "Cleaning..."
    rm -rf loader node_modules dist www
fi
if $install; then
    echo "Install & build"
    npm install && npm run build
fi

# echo "Serve both components..."
# cd ..
# npx http-server