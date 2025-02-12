
% -----------------------------------------------------------------------------------------
% Realistic 4D abdominal phantom for magnetic resonance imaging
% Wei-Ching Lo
% wxl317@case.edu
% Case Western Reserve University
% April 2018
% -----------------------------------------------------------------------------------------

% Sequence Parameters: 'InversionRecoveryLookLocker' => T1 mapping

defseq.baseTR = 3.5/1000; % sec
defseq.baseTE = 0.8/1000; % sec
defseq.FA = 5; % degrees
defseq.TRinprep = np*npar*nset; % # of TRs in one preparation
defseq.TRinex = 1; % # of TRs in one excitation
defseq.nprep = 1; % # of preparations
defseq.phaseang = 117; % degrees
defseq.preppausetime = 0; % sec
defseq.dfrange = 0; % off-resonance in Hz
defseq.fatsat = 0; % fat saturation

% Preparation:
% 0: No prepatation
% 1: Inversion recovery
% 2: Spin echo
defseq.prepind = 1; % Inversion recovery

% Define sampling pattern
% 'projinpar': projection in partition
% 'parinproj': partition in projection
% 'userdefined': user defined sampling pattern
defseq.samptype = 'projinpar';
if strcmp(sampmode,'demo')
    defseq.demosig = [175 525 875 1225 1575 3325]/3.5; % selected contrast for phantom image
end