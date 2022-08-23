import React from 'react';
import Invoices from './invoices';
import Header from './invoices/header'

const App = (props) => {
	return (
		<div>
			<h1>React starts here</h1>
			<Header />
			<Invoices invoicesData={props.allInvoices} />
		</div>
	)
}

export default App