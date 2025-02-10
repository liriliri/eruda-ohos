import { hilog } from '@kit.PerformanceAnalysisKit'

class Logger {
  private domain: number
  private prefix: string

  constructor(prefix: string = 'MyApp', domain: number = 0x0000) {
    this.prefix = prefix;
    this.domain = domain;
  }

  debug(format: string, ...args: string[]): void {
    hilog.debug(this.domain, this.prefix, format, args)
  }

  info(format: string, ...args: string[]): void {
    hilog.info(this.domain, this.prefix, format, args)
  }

  warn(format: string, ...args: string[]): void {
    hilog.warn(this.domain, this.prefix, format, args)
  }

  error(format: string, ...args: string[]): void {
    hilog.error(this.domain, this.prefix, format, args)
  }
}

export default Logger
