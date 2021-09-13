---------------------------------------------------------------
-- @file	stg120_config.lua
-- @author	Miura Yoshitaka <Miura_Yoshitaka@sega.co.jp>
-- @brief	stg120 の設定ファイル
-- @data	2010/05/10 更新
---------------------------------------------------------------

METER = 10.0


---------------------------------------------------------------


-- 落ち死にする高さ。これより下にプレイヤーが移動すると死にます。
dead_line = -300.0 * METER
-- ドリルの壁から表示だけ飛び出すオフセット値。デフォルト1m(1.0)
drill_offset = 1.5

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
		 ev = 1.10,
		 brightpass = 2.97,
	  },
   },

	-- ライト
	{
		name = "CLightManager",
		params = {
			-- 環境光
			ambient_color = { 150, 170, 170 },
			
			-- 平行光色、半球ライト色
			lfield_params = {
				{
					index = 1,
					diffuse_color = { 170, 180, 180 },
					gloss = 16.0,
					sky_color = { 110, 120, 130, },
					ground_color = { 70, 80, 70, },
				},
				{
					index = 2,
					diffuse_color = { 60, 60, 70 },
					gloss = 16.0,
					sky_color = { 70, 90, 90, },
					ground_color = { 55, 65, 70, },
				},
				{
					index = 3,
					diffuse_color = { 170, 150, 100 },
					gloss = 16.0,
					sky_color = { 130, 120, 70, },
					ground_color = { 80, 80, 70, },
				},
				{
					index = 4,
					diffuse_color = { 170, 160, 150 },
					gloss = 16.0,
					sky_color = { 130, 130, 110, },
					ground_color = { 90, 80, 60, },
				},
				{
					index = 5,
					diffuse_color = { 120, 110, 70 },
					gloss = 16.0,
					sky_color = { 100, 110, 70, },
					ground_color = { 100, 60, 30, },
				},
				{
					index = 6,
					diffuse_color = { 240, 150, 160 },
					gloss = 16.0,
					sky_color = { 200, 100, 100, },
					ground_color = { 200, 80, 30, },
				},
				{
					index = 7,
					diffuse_color = { 90, 100, 100 },
					gloss = 16.0,
					sky_color = { 90, 70, 40, },
					ground_color = { 60, 50, 30, },
				},

			},
		},
	},

   -- 地形
   {
	  name = "CTerrainManager",
	  params = {
		 yfollow = true,
		 yoffset = 0.0 * METER,
		 -- far = 800.0 * METER,
		 -- near = 0.35 * METER,
		 -- clip0 = 1000.0 * METER,
		 -- clip1 = 450.0 * METER,
		 -- clip2 = 350.0 * METER,
		 -- clip3 = 250.0 * METER,
		 -- clip4 = 150.0 * METER,
		 -- clip5 = 50.0 * METER,
		 
		 -- この変数は(仮)
		 anim_range = 1000 * METER,
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
		 end_z = 1000.0 * METER,
		 color = { 10, 70, 140 },
	  },
   },

   -- サーキット
   {
	  name = "CCircuitManager",
   },

   -- オブジェクトFlowEx
   {
          name = "CObjFlowExManager",
   },

   -- 影色
   {
	  name = "CShadowManager",
	  params = {
		 color = { 0, 10, 5 },
		 alpha = 115,
	  },
   }, 

}
