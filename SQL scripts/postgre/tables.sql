ALTER TABLE public.clients
  ADD CONSTRAINT fkclient_sale FOREIGN KEY (sales_id_sale)
      REFERENCES public.sales (id_sale) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE RESTRICT;
	  
ALTER TABLE public.passangers
  ADD CONSTRAINT fk_client_pass FOREIGN KEY (id_client)
      REFERENCES public.clients (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE RESTRICT;
	 
ALTER TABLE public.trips
  ADD CONSTRAINT fk_trip_tour FOREIGN KEY (id_tour)
      REFERENCES public.tours_list (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE RESTRICT;
