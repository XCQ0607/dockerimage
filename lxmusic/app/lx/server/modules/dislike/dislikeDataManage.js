"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.DislikeDataManage = void 0;
const constants_1 = require("../../constants");
const utils_1 = require("./utils");
const filterRulesToString = (rules) => {
    return Array.from((0, utils_1.filterRules)(rules)).join('\n');
};
class DislikeDataManage {
    constructor(snapshotDataManage) {
        this.dislikeRules = '';
        this.getDislikeRules = async () => {
            return this.dislikeRules;
        };
        this.addDislikeInfo = async (infos) => {
            this.dislikeRules = filterRulesToString(this.dislikeRules + '\n' + infos.map(info => `${info.name ?? ''}${constants_1.SPLIT_CHAR.DISLIKE_NAME}${info.singer ?? ''}`).join('\n'));
            return this.dislikeRules;
        };
        this.overwirteDislikeInfo = async (rules) => {
            this.dislikeRules = filterRulesToString(rules);
            return this.dislikeRules;
        };
        this.snapshotDataManage = snapshotDataManage;
        let dislikeRules;
        void this.snapshotDataManage.getSnapshotInfo().then(async (snapshotInfo) => {
            if (snapshotInfo.latest)
                dislikeRules = await this.snapshotDataManage.getSnapshot(snapshotInfo.latest);
            if (!dislikeRules)
                dislikeRules = '';
            this.dislikeRules = dislikeRules;
        });
    }
}
exports.DislikeDataManage = DislikeDataManage;
