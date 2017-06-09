package service;

import org.apache.ibatis.session.SqlSession;

import model.Vendedor;
import mybatis.MyBatisUtil;
import mybatis.mapper.VendedorMapper;

public class VendedorService implements VendedorMapper {

	@Override
	public Vendedor sesion(Vendedor obj) throws Exception {
		SqlSession sesion = MyBatisUtil.getSqlSessionFactory().openSession();
		Vendedor vendedor = null;
		try {
			VendedorMapper mapper = sesion.getMapper(VendedorMapper.class);
			vendedor = mapper.sesion(obj);
		} catch (Exception e) {
			System.out.println("ERROR >>>" + e.getMessage());
		} finally {
			sesion.close();
		}
		return vendedor;
	}

}
