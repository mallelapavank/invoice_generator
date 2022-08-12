import React from 'react';
import Invoices, {Header} from './invoices';
import { Link } from "react-router-dom";

const App = (props) => {
	return (
		<div>
			<Header />
			<Invoices invoicesData={props.allInvoices} />
			<Link to="/invoices">Create Invoice</Link> |{" "}
		</div>
	)
}

export default App