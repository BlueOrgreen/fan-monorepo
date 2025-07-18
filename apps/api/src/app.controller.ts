import { Controller, Get } from '@nestjs/common';

import { AppService } from './app.service';
import { IPost } from './types';

@Controller()
export class AppController {
    constructor(private readonly appService: AppService) {}

    @Get()
    getHello(): string {
        return this.appService.getHello();
    }

    @Get('posts')
    getPosts(): Promise<IPost[]> {
        return this.appService.getPosts();
    }
}
