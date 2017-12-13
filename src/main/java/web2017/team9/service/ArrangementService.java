package web2017.team9.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import web2017.team9.dao.ArrangementDao;

/**
 * Created by WSF on 2017/12/13.
 */
@Service
public class ArrangementService {
    @Autowired
    private ArrangementDao arragementDao;
}
