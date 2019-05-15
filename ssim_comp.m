clear;
close all

ANCHOR_bpp = [0.1265306, 0.1530612, 0.1795918, 0.2061224, 0.2326531, 0.2591837, 0.2857143, 0.3122449, 0.3387755, 0.3653061, 0.3918367, 0.4183673, 0.444898, 0.4714286, 0.4979592, 0.5244898, 0.5510204, 0.577551, 0.6040816, 0.6306122, 0.6571429, 0.6836735, 0.7102041, 0.7367347, 0.7632653, 0.7897959, 0.8163265, 0.8428571];
ANCHOR_ssim = [0.9289356, 0.9417454, 0.9497924, 0.9553684, 0.9598574, 0.9636625, 0.9668663, 0.9695684, 0.9718446, 0.9738012, 0.9755308, 0.9770696, 0.9784622, 0.9797252, 0.9808753, 0.9819255, 0.9828875, 0.9837722, 0.9845877, 0.9853407, 0.9860362, 0.9866768, 0.987269, 0.9878184, 0.9883268, 0.9887977, 0.9892346, 0.9896379];

PRAE_bpp = [0.351, 0.449, 1.131];
PRAE_ssim = [0.968, 0.976, 0.989];

BPG_bpp = [0.892973158	0.803179423	0.71746148	0.637656318	0.570552402	0.501953125	0.438307868	0.38253869	0.332013448	0.288143582	0.248694526	0.214542813	0.182036506	0.15609826	0.132294549	0.112660726	0.095203824	0.08090549	0.067717658	0.056573656	0.047458225	0.039427016	0.033092923];
BPG_ssim = [0.983989304	0.981894621	0.97943312	0.976535945	0.974101963	0.970461287	0.966239383	0.961292272	0.955830247	0.950895451	0.944319617	0.938106779	0.929674786	0.921857364	0.912398789	0.903326373	0.891565797	0.880930421	0.868846331	0.855165702	0.841806886	0.826249999	0.812022102];

JPEG_bpp = [0.146659851	0.160553826	0.17960612	0.200606452	0.22231547	0.244082133	0.265757243	0.286699083	0.308174133	0.328908285	0.349432204	0.368759155	0.389416165	0.406849331	0.425727844	0.444151984	0.462006463	0.479945713	0.495502896	0.509668986	0.527288649	0.543169657	0.559282091	0.573617723	0.587866041	0.602895101	0.617569817	0.63380093	0.64609358	0.66012658];
JPEG_ssim = [0.550055568	0.670154767	0.725352458	0.774541382	0.808582434	0.83924496	0.857123362	0.874131934	0.882661531	0.895388455	0.903293699	0.910438589	0.918156308	0.923121903	0.928365304	0.933042936	0.937269498	0.94082566	0.943071214	0.946280618	0.948937933	0.950691818	0.952791108	0.955129189	0.95660859	0.958105877	0.96002667	0.961312607	0.962314383	0.96361237];

JP2K_bpp = [0.01478831	0.023786757	0.036895752	0.055439419	0.080801222	0.113180372	0.154343499	0.204128689	0.263566759	0.332971361	0.412382338	0.507339478	0.61146715	0.730812073	0.860683865	1.003120422	1.159756978	1.334149679	1.528090583	1.739729987	1.976626926];
JP2K_ssim = [0.611769935	0.659446027	0.707971503	0.756251898	0.794616269	0.830755052	0.86144252	0.886833158	0.907740502	0.925820943	0.939131113	0.950793302	0.960614184	0.967885247	0.973791864	0.97840917	0.982186737	0.985162292	0.988080183	0.99008955	0.99128135];

WEBP_bpp = [0.166870117	0.188635932	0.206198798	0.222483317	0.235671997	0.248726739	0.261167738	0.273585002	0.284918891	0.29727851	0.309331258	0.319903904	0.332178752	0.343271891	0.353610569	0.365305583	0.375457764	0.385545519	0.396226671	0.407809787	0.418816461	0.428797404	0.439687093	0.450642904	0.46120029	0.472454495	0.482698229	0.492455377	0.501990424	0.513476902	0.526167128	0.536493937	0.547329373	0.55971951	0.568037245	0.577653673	0.587693956	0.59928555	0.611416287	0.62153795	0.631547716	0.640482585	0.651248508	0.663447062	0.675315009	0.68258667	0.692942301	0.703872681	0.714979384	0.722608778	0.73091295	0.742579142	0.751074897	0.75956387	0.771675958	0.781534831	0.7918023	0.802519057	0.812549167	0.824651082	0.832309299	0.84129164	0.8557095	0.866131253	0.874627007	0.886949327	0.899673462	0.91232978	0.924562242	0.934887356	0.948684692	0.959292942	0.972069634	0.98848131	0.999003092	1.0406918	1.085669623	1.128070407	1.171449449	1.217076619];
WEBP_ssim = [0.902681992	0.911968458	0.91820413	0.922757204	0.926586463	0.930059636	0.932956366	0.935582226	0.93792838	0.940322762	0.942416297	0.944191404	0.946109226	0.947447868	0.949012353	0.950552679	0.951724521	0.953019587	0.954221151	0.955405667	0.956492355	0.957613351	0.958698484	0.959632333	0.960669074	0.961438647	0.962266171	0.963002564	0.96373754	0.964435165	0.965316393	0.966018346	0.96673867	0.967408295	0.967929189	0.968484198	0.96914313	0.969666539	0.970151562	0.970807578	0.971305092	0.971804875	0.97227098	0.972766178	0.973235429	0.973636291	0.974101211	0.974564589	0.975010409	0.975324321	0.975795963	0.976151979	0.97656179	0.976933447	0.977333504	0.977724432	0.978062062	0.978346402	0.978694916	0.97899392	0.979249067	0.979513592	0.979802592	0.980197253	0.980549087	0.980759592	0.981091249	0.981406275	0.981687591	0.981842606	0.982113716	0.982420986	0.982760149	0.983083407	0.983406951	0.98421134	0.985015624	0.985727477	0.986354794	0.987085997];

% grid
plot([0 1], [0.86 0.86], 'k-','Color',1-0.15*([1,1,1]),'EraseMode','xor');
hold on
plot([0 1], [0.88 0.88], 'k-','Color',1-0.15*([1,1,1]),'EraseMode','xor');
hold on
plot([0 1], [0.90 0.90], 'k-','Color',1-0.15*([1,1,1]),'EraseMode','xor');
hold on
plot([0 1], [0.92 0.92], 'k-','Color',1-0.15*([1,1,1]),'EraseMode','xor');
hold on
plot([0 1], [0.94 0.94], 'k-','Color',1-0.15*([1,1,1]),'EraseMode','xor');
hold on
plot([0 1], [0.96 0.96], 'k-','Color',1-0.15*([1,1,1]),'EraseMode','xor');
hold on
plot([0 1], [0.98 0.98], 'k-','Color',1-0.15*([1,1,1]),'EraseMode','xor');
hold on
plot([0 1], [0.1 0.1], 'k-','Color',1-0.15*([1,1,1]),'EraseMode','xor');
hold on
plot([0.2 0.2], [0.85 1], 'k-','Color',1-0.15*([1,1,1]),'EraseMode','xor');
hold on
plot([0.4 0.4], [0.85 1], 'k-','Color',1-0.15*([1,1,1]),'EraseMode','xor');
hold on
plot([0.6 0.6], [0.85 1], 'k-','Color',1-0.15*([1,1,1]),'EraseMode','xor');
hold on
plot([0.8 0.8], [0.85 1], 'k-','Color',1-0.15*([1,1,1]),'EraseMode','xor');
hold on

% curves
A = plot(BPG_bpp, BPG_ssim, 'Color',[63,146,210]/255, 'LineWidth', 2);
hold on
B = plot(JPEG_bpp, JPEG_ssim, '--', 'Color',[102,163,210]/255, 'LineWidth', 2);
hold on
C = plot(JP2K_bpp, JP2K_ssim, 'Color',[148,0,211]/255, 'LineWidth', 2);
hold on
D = plot(WEBP_bpp, WEBP_ssim, '--', 'Color',[138,43,226]/255, 'LineWidth', 2);
hold on
E = plot(ANCHOR_bpp, ANCHOR_ssim, 'k', 'LineWidth', 2);
hold on
F = plot(PRAE_bpp, PRAE_ssim, 'rx', 'LineWidth', 2);
hold on





axis([0 1 0.85 1]);
set(gca,'xtick',[0:0.05:1]);
set(gca,'xticklabel',{'0',' ',' ',' ','0.2',' ',' ',' ','0.4',' ',' ',' ','0.6',' ',' ',' ','0.8',' ',' ',' ','1.0'});
set(gca,'ytick',[0.85:0.01:1]);
set(gca,'yticklabel',{' ','0.86',' ','0.88',' ','0.90',' ','0.92',' ','0.94',' ','0.96',' ','0.98',' ','1.00'});

legend([A,B,C,D,E,F],'BPG', 'JPEG', 'JPEG2000', 'Webp', 'Anchor', 'Ours');