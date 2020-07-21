import {Component, OnInit} from '@angular/core';
import {Message} from './message_pb';

@Component({
  selector: 'lib-lib',
  template: `
    <p>
      lib works!
    </p>
  `,
  styles: []
})
export class LibComponent implements OnInit {

  constructor() {
  }

  ngOnInit(): void {
    const message = new Message();

    message.setName('Test Protobuf');

    console.log(message.getName());
  }

}
