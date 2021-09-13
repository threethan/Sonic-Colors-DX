---------------------------------------------------------------
-- @file	stg190_config.lua
-- @author	Kawabata Yoshitaka <Kawabata_Yoshitaka@sega.co.jp>
-- @brief	stg110 の設定ファイル
-- @data	2009/07/17 ステージ設定ファイル第一号として誕生
---------------------------------------------------------------

METER = 10.0


---------------------------------------------------------------


-- 落ち死にする高さ。これより下にプレイヤーが移動すると死にます。
dead_line = -30.0 * METER

-- カメラ設定.
camera = {

   near = 0.1 * METER,
   far = 1000.0 * METER,
   fov = 60,
}

-- サービスのリスト.
services = {

	-- グレア
   {
	  name = "CGlareManager",
	  params = {
		 ev = 1.10,
		 brightpass = 2.97,
	  },
    },

	-- ライト
	{
		name = "CLightManager",
		params = {
			-- 環境光
			ambient_color = { 100, 100, 100 },
			
			-- 平行光色、半球ライト色
			lfield_params = {
				{
					index = 1,
					diffuse_color = { 90, 100, 110 },
					specular_color = { 160, 170, 180 },
					gloss = 16.0,
					sky_color = { 140, 140, 150, },
					ground_color = { 140, 160, 120, },
				},

			},
		},
	},

   {
	-- 地形
	  name = "CTerrainManager",
	  params = {
		 yfollow = true,
		 yoffset = -100.0 * METER,
		 -- far = 800.0 * METER,
		 -- near = 0.35 * METER,
		 -- clip0 = 1000.0 * METER,
		 -- clip1 = 450.0 * METER,
		 -- clip2 = 350.0 * METER,
		 -- clip3 = 250.0 * METER,
		 -- clip4 = 150.0 * METER,
		 -- clip5 = 50.0 * METER,
		 
		 -- この変数は(仮)
		 -- anim_range = 600 * METER,
	  },
   },

   -- パス
   {
	  name = "CPathManager",
	  params = {
		 debug_collision = false,
	  },
   },

   -- フォグ
   {
	  name = "CFogManager",
	  params = {
		 type = "exp",
		 start_z = 0.0 * METER,
		 end_z = 10000.0 * METER,
		 color = { 10, 70, 140 },
	  },
   },
}
