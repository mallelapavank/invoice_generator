import React from 'react';

const Invoices = (props) => {
	// return props.allInvoices.map(i => i.invoice_number)
	return (
		<div>
			<h1>Invoices From React :-)</h1>
			<table>
				<thead>
					<tr>
						<th>Invoice Number</th>
						<th>Invoice Date</th>
						<th>Due Date</th>
					</tr>
				</thead>
				<tbody>
					{props.invoicesData.map(i => {
						return <tr key={i.invoice_number}>
						<td>{i.invoice_number} </td>
						<td>{i.generation_date}</td>
						<td>{i.due_date}</td>
					</tr>
					})}
				</tbody>
			</table>
		</div>
	)
}

export default Invoices