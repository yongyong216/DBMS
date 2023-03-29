-- 기차 예약 데이터베이스 생성
CREATE DATABASE train_reservation;
USE train_reservation;

-- 가격 테이블 생성 
CREATE TABLE Cost( -- Station에 관계한다.
	departure_station VARCHAR(50) NOT NULL,
    arrival_station VARCHAR(50) NOT NULL,
    amount INT NOT NULL
);

CREATE TABLE Train(
	train_number VARCHAR(10) PRIMARY KEY,
    departure_station VARCHAR(50) NOT NULL,
    departure_time TIME NOT NULL,
    arrival_station VARCHAR(50) NOT NULL,
    arrival_time TIME NOT NULL,
    take_minute TIME NOT NULL,
    type VARCHAR(10) NOT NULL
);

CREATE TABLE Station( -- 본인한테 관계가 있는 코드?
	station_number INT AUTO_INCREMENT PRIMARY KEY,
    station_name VARCHAR(50) NOT NULL,
    address TEXT NOT NULL UNIQUE,
    tel_number VARCHAR(15) NOT NULL UNIQUE
);

CREATE TABLE STOP_STATION(
	station_number INT NOT NULL,
    train_number VARCHAR(10) NOT NULL,
    departure_time TIME NOT NULL,
    arrival_time TIME NOT NULL
);

CREATE TABLE SEAT( -- 고객을 빼고 예약이 된거 안된거로 볼 수 있다.
	seat_code VARCHAR(5) PRIMARY KEY,
	type VARCHAR(10) NOT NULL, -- 일반실, 특실 
    seat_number VARCHAR(2) NOT NULL,
    train_type VARCHAR(10) NOT NULL
);



