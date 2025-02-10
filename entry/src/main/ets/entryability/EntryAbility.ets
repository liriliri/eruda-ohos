import { AbilityConstant, UIAbility, Want } from '@kit.AbilityKit'
import { window } from '@kit.ArkUI'
import Logger from '../common/utils/Logger'

const logger = new Logger("EntryAbility")

export default class EntryAbility extends UIAbility {
  onCreate(want: Want, launchParam: AbilityConstant.LaunchParam): void {
    logger.info('Ability onCreate')
  }

  onWindowStageCreate(windowStage: window.WindowStage): void {
    logger.info('Ability onWindowStageCreate')

    windowStage.loadContent("pages/Index", (err) => {
      if (err.code) {
        logger.error('Failed to load the content. Cause: %{public}s', JSON.stringify(err) ?? '')
        return
      }

      logger.info('Succeeded in loading the content.')
    })
  }
}
