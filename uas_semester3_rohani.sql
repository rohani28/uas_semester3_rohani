-- phpMyAdmin SQL Dump
-- version 3.1.3.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 27, 2020 at 08:27 PM
-- Server version: 5.1.33
-- PHP Version: 5.2.9

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `uas_semester3_rohani`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE IF NOT EXISTS `barang` (
  `id_barang` int(11) NOT NULL,
  `nama_barang` varchar(255) NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `satuan_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id_barang`, `nama_barang`, `kategori_id`, `satuan_id`) VALUES
(2, 'Jersey futsal', 2, 2),
(3, 'Jaket kulit', 3, 3),
(4, 'Sepatu futsal', 4, 4),
(5, 'Sendal gunung eiger', 5, 5),
(1, 'celana smp dan sma', 1, 1),
(1, 'sepatu', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE IF NOT EXISTS `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama`) VALUES
(1, 'Celana'),
(2, 'Baju'),
(3, 'Jaket'),
(4, 'Sepatu'),
(5, 'Sendal'),
(1, 'baju jersey');

-- --------------------------------------------------------

--
-- Table structure for table `satuan`
--

CREATE TABLE IF NOT EXISTS `satuan` (
  `id_satuan` int(11) NOT NULL,
  `nama_satuan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `satuan`
--

INSERT INTO `satuan` (`id_satuan`, `nama_satuan`) VALUES
(1, 'Pcs'),
(2, 'Pcs'),
(3, 'Kodi'),
(4, 'Pcs'),
(5, 'Dus'),
(1, 'sendal');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE IF NOT EXISTS `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `nama_transaksi` varchar(255) NOT NULL,
  `tgl_transaksi` date NOT NULL,
  `harga` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `nama_transaksi`, `tgl_transaksi`, `harga`, `qty`, `id_barang`) VALUES
(1, 'Pembelian celana sekolah', '2020-02-10', 80000, 5, 1),
(2, 'Pembelian baju jersey', '2020-02-11', 50000, 100, 2),
(3, 'Pembelian jaket hitam', '2020-02-11', 250000, 25, 3),
(4, 'Pembelian sepatu cats', '2020-03-04', 300000, 20, 4),
(5, 'Pembelian sendal gunung', '2020-02-03', 150000, 10, 5);
