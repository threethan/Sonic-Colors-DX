---------------------------------------------------------------
-- @file	stg290_config.lua
-- @author	Kawabata Yoshitaka <Kawabata_Yoshitaka@sega.co.jp>
-- @brief	stg290 の設定ファイル
-- @data	ステージ設定ファイル
---------------------------------------------------------------

METER = 10.0


---------------------------------------------------------------


-- 落ち死にする高さ。これより下にプレイヤーが移動すると死にます。
dead_line = -250.0 * METER

-- カメラ設定.
camera = {

   near = 0.1 * METER,
   far = 1500.0 * METER,
   fov = 60,
}

-- サービスのリスト.
services = {

	-- グレア
   {
	  name = "CGlareManager",
	  params = {
		 ev = 1.00,
		 brightpass = 2.00,
	  },
    },
	-- ライト
	{
		name = "CLightManager",
		params = {
			-- 環境光
			ambient_color = { 150, 107, 172 },
			
			-- 平行光色、半球ライト色
			lfield_params = {
				{
					index = 1,
					diffuse_color = { 150, 130, 120 },
					gloss = 16.0,
					sky_color = { 200, 160, 120, },
					ground_color = { 130, 80, 120, },
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
		 type = "linear",
		 start_z = 40.0 * METER,
		 end_z = 600.0 * METER,
		 color = { 200, 150, 150 },
	  },
   },

   -- 影色
   {
	  name = "CShadowManager",
	  params = {
		 color = { 10, 0, 15 },
		 alpha = 110,
	  },
   }, 

}
