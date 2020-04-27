
module.exports = {


    entry: {
        main: './src/index.js'
    },
      output: {
        filename: '[name].js',
        path: __dirname + '/dist'
    },
    //モード値をproductionに設定すると最適化された状態で、
    //developmentに設定するとソースマップ有効でJSファイルが出力される
    mode: "production",

    module: {
        rules: [
            {
                //拡張子.jsの場合
                test: /\.js$/,
                use: [
                    {
                        //Babelを利用する
                        loader: "babel-loader",
                        //Babelのオプションを指定する
                        options: {
                            presets: [
                                [
                                //プリセットを指定することで、ES2020をES5に変換
                                "@babel/preset-env",
                                {
                                    // await/asyncを利用するのに必要
                                    // @babel/polyfillは非推奨
                                    corejs: 3,
                                }],
                                //ReactのJSXを解釈
                                ["@babel/react"]
                            ]
                        }
                    }
                ]
            }
        ]
    }
};

