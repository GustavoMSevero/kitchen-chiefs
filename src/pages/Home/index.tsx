import React, { useEffect, useState } from 'react';
import { Table } from 'react-bootstrap';

import api from '../../services/api';

// import { Container } from './styles';

interface IChief {
    id: number;
    name: string;
    meni: string;
    price: number;
}

const Home: React.FC = () => {
    const [chiefs, setChiefs] = useState<IChief[]>([]);
    const [searchInput, setSearchInput] = useState('');

    // const searchItems = () => {
    //     setSearchInput(searchValue)
    //     chiefs.filter((item) => {
    //         return Object.values(item).join('').toLowerCase().includes(searchInput.toLowerCase())
    //     })
    // }

    useEffect(() => {
        loadChiefs();
    }, [])

    async function loadChiefs() {
        const response = await api.get('chiefs.php');
        setChiefs(response.data);
    }

  return (
    <view>
        {/* <input placeholder='Search...'
                onChange={() => searchItems(e.target.value)}
            /> */}
            
        <Table striped bordered hover className="text-center">
            <thead>
                <tr>
                    <th>Chief</th>
                    <th>Menu</th>
                    <th>Price</th>
                </tr>
            </thead>
            <tbody>
                { chiefs &&
                    chiefs.map(chief => {
                        return (
                        <tr key={chief.id} >
                            <td>{ chief.name }</td>
                            <td>{ chief.meni }</td>
                            <td align='right'>{ chief.price }</td>
                        </tr>
                        )
                    })
                }
            </tbody>
        </Table>
    </view>
  );
}

export default Home;