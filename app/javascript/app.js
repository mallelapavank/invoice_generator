import React from 'react';
import Invoices, {Header} from './invoices';

const App = (props) => {
	return (
		<div>
			<Header />
			<Invoices invoicesData={props.allInvoices} />
		</div>
	)
}

export default App