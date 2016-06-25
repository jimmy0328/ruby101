import React from 'react';
import ReactDOM from 'react-dom';
import App from './App';

class App1 extends React.Component{

  constructor(){
    super();
    this.state = { count: 0 }
    this.update = this.update.bind(this);
  }

  update(){
    this.setState({count: this.state.count + 1});
  }

  componentWillMount(){
    console.warn("mounting");
  }

  componentDidMount(){
    console.warn("mounted");
  }

  componentWillUnmount(){
    console.warn("bye");
  }
  render(){
    console.warn("rendering");
    return <button onClick={this.update}>{this.state.count}</button>
  }

}

class Wrapper extends React.Component{

  constructor(){
    super();
  }

  mount(){
    ReactDOM.render(<App1 />, document.getElementById('app'));
  }

  unmount(){
    ReactDOM.unmountComponentAtNode(document.getElementById('app'));
  }

  render(){
    return <div>
      <button onClick={this.mount.bind(this)}> Mount</button>
      <button onClick={this.unmount.bind(this)}> unMount</button>
    </div>
  }

}

ReactDOM.render(<App />, document.getElementById('app'));
ReactDOM.render(<Wrapper />, document.getElementById('app1'));
