--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: restaurants; Type: TABLE; Schema: public; Owner: Sasquatch; Tablespace: 
--

CREATE TABLE restaurants (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    address character varying(255),
    city character varying(255) NOT NULL,
    state character varying(2) NOT NULL,
    zip character varying(5) NOT NULL,
    description character varying(1023) NOT NULL
);


ALTER TABLE restaurants OWNER TO "Sasquatch";

--
-- Name: restaurants_id_seq; Type: SEQUENCE; Schema: public; Owner: Sasquatch
--

CREATE SEQUENCE restaurants_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE restaurants_id_seq OWNER TO "Sasquatch";

--
-- Name: restaurants_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Sasquatch
--

ALTER SEQUENCE restaurants_id_seq OWNED BY restaurants.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: Sasquatch
--

ALTER TABLE ONLY restaurants ALTER COLUMN id SET DEFAULT nextval('restaurants_id_seq'::regclass);


--
-- Name: restaurants_pkey; Type: CONSTRAINT; Schema: public; Owner: Sasquatch; Tablespace: 
--

ALTER TABLE ONLY restaurants
    ADD CONSTRAINT restaurants_pkey PRIMARY KEY (id);


--
-- Name: restaurant_name_and_city; Type: INDEX; Schema: public; Owner: Sasquatch; Tablespace: 
--

CREATE UNIQUE INDEX restaurant_name_and_city ON restaurants USING btree (name, city);


--
-- Name: public; Type: ACL; Schema: -; Owner: Sasquatch
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM "Sasquatch";
GRANT ALL ON SCHEMA public TO "Sasquatch";
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

