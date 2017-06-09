package service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import model.Producto;
import mybatis.MyBatisUtil;
import mybatis.mapper.ProductoMapper;

public class ProductoService {

	
	public List<Producto> listado() {
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		List<Producto> lista =  null; 
		try {
			ProductoMapper pm = session.getMapper(ProductoMapper.class);
			lista = pm.listado();
		} catch (Exception e){
			
		} finally {
			session.close();
		}
		return lista;
	}
	
	public int registrar(Producto producto) {
		int ok = 0;
		SqlSession session = MyBatisUtil.
				getSqlSessionFactory().openSession();
		try {
			ProductoMapper pm = session.
					getMapper(ProductoMapper.class);
			ok = pm.registrar(producto);		
			session.commit();
		} catch (Exception e){		
		} finally {
			session.close();
		}
		return ok;
	}

	public int eliminar(int codigo) {
		int ok = 0;
		SqlSession session = MyBatisUtil.
				getSqlSessionFactory().openSession();
		try {
			ProductoMapper pm = session.
					getMapper(ProductoMapper.class);
			ok = pm.eliminar(codigo);		
			session.commit();
		} catch (Exception e){		
		} finally {
			session.close();
		}
		return ok;
	}

	public Producto obtener(int codigo) {
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		Producto producto =  null; 
		try {
			ProductoMapper pm = session.getMapper(ProductoMapper.class);
			producto = pm.obtener(codigo);
		} catch (Exception e){
			
		} finally {
			session.close();
		}
		return producto;
	}

	
	
}
