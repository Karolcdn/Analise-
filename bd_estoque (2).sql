PGDMP                         {         
   bd_estoque    14.7    14.7     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    33203 
   bd_estoque    DATABASE     j   CREATE DATABASE bd_estoque WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE bd_estoque;
                postgres    false                        2615    33217    dw    SCHEMA        CREATE SCHEMA dw;
    DROP SCHEMA dw;
                postgres    false            �            1259    33207 	   tbestoque    TABLE     6  CREATE TABLE public.tbestoque (
    produto_id integer NOT NULL,
    nome_produto character varying(100),
    categoria_produto character varying(50),
    preco_produto numeric(10,2),
    fornecedor_id integer NOT NULL,
    nome_fornecedor character varying(100),
    endereco_fornecedor character varying(200),
    telefone_fornecedor character varying(20),
    loja_id integer NOT NULL,
    nome_loja character varying(100),
    endereco_loja character varying(200),
    cidade_loja character varying(100),
    quantidade_estoque integer,
    data_estoque date
);
    DROP TABLE public.tbestoque;
       public         heap    postgres    false            �            1259    33205    tbestoque_fornecedor_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tbestoque_fornecedor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.tbestoque_fornecedor_id_seq;
       public          postgres    false    213            �           0    0    tbestoque_fornecedor_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.tbestoque_fornecedor_id_seq OWNED BY public.tbestoque.fornecedor_id;
          public          postgres    false    211            �            1259    33206    tbestoque_loja_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tbestoque_loja_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.tbestoque_loja_id_seq;
       public          postgres    false    213            �           0    0    tbestoque_loja_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.tbestoque_loja_id_seq OWNED BY public.tbestoque.loja_id;
          public          postgres    false    212            �            1259    33204    tbestoque_produto_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tbestoque_produto_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.tbestoque_produto_id_seq;
       public          postgres    false    213            �           0    0    tbestoque_produto_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.tbestoque_produto_id_seq OWNED BY public.tbestoque.produto_id;
          public          postgres    false    210            _           2604    33210    tbestoque produto_id    DEFAULT     |   ALTER TABLE ONLY public.tbestoque ALTER COLUMN produto_id SET DEFAULT nextval('public.tbestoque_produto_id_seq'::regclass);
 C   ALTER TABLE public.tbestoque ALTER COLUMN produto_id DROP DEFAULT;
       public          postgres    false    213    210    213            `           2604    33211    tbestoque fornecedor_id    DEFAULT     �   ALTER TABLE ONLY public.tbestoque ALTER COLUMN fornecedor_id SET DEFAULT nextval('public.tbestoque_fornecedor_id_seq'::regclass);
 F   ALTER TABLE public.tbestoque ALTER COLUMN fornecedor_id DROP DEFAULT;
       public          postgres    false    211    213    213            a           2604    33212    tbestoque loja_id    DEFAULT     v   ALTER TABLE ONLY public.tbestoque ALTER COLUMN loja_id SET DEFAULT nextval('public.tbestoque_loja_id_seq'::regclass);
 @   ALTER TABLE public.tbestoque ALTER COLUMN loja_id DROP DEFAULT;
       public          postgres    false    212    213    213            �          0    33207 	   tbestoque 
   TABLE DATA           �   COPY public.tbestoque (produto_id, nome_produto, categoria_produto, preco_produto, fornecedor_id, nome_fornecedor, endereco_fornecedor, telefone_fornecedor, loja_id, nome_loja, endereco_loja, cidade_loja, quantidade_estoque, data_estoque) FROM stdin;
    public          postgres    false    213   6       �           0    0    tbestoque_fornecedor_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.tbestoque_fornecedor_id_seq', 1, false);
          public          postgres    false    211            �           0    0    tbestoque_loja_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.tbestoque_loja_id_seq', 1, false);
          public          postgres    false    212            �           0    0    tbestoque_produto_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.tbestoque_produto_id_seq', 1, false);
          public          postgres    false    210            c           2606    33216    tbestoque tbestoque_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.tbestoque
    ADD CONSTRAINT tbestoque_pkey PRIMARY KEY (produto_id);
 B   ALTER TABLE ONLY public.tbestoque DROP CONSTRAINT tbestoque_pkey;
       public            postgres    false    213            �      x���K�-Ir]�yG�	�s3��	���j�C�R�	�1i �����	۱�̇��=Ve�y��Ż}�a���������o�������~�����_��?�_��������~��������o?���׿���_����������������_=�c��?�������?�����o�O�v5��k�C�_�9��q~�#y��q��q~�S�q���q�O��Ɨ?�9��}\�q\�qq�S�q���q�O���W<�������u��z��������}���_�9.��s\���~7�ܨ��>�^���x���q7�	ܬ��>�Qǵ��7_?*�>n�q��Uǭ|v������^?*�>n�q��]��|v�����s�~����8������D�~����H�_�?��]�^?0v}�j�S��kԡ?������u���P"�7b���C���GiE�_V��7g�4�"��!j���b��/+�؛6��{���8?�i���r�������c��|���/+�؛<��{���>?�L�>�_V��7�@�"��!�~���}YA���oًC�� ��gZ$2��B��Yd�0���q�ϴxdח��M$�FR{!��	�~����ՊI�ͤ�ͤ�bR�C&���ڊI��jŤ�fR��מ��=��VL��o>����ͤ�bR�������ՊI�ͤ�ͤ�bR����b�տZ1���Ծ��^Lj�W�VL���ڛI�I�Ť�!jŤ˿Z1���Ծ��^Lj�עVL��W+&�7��7�ڋI�/�rԊI�}�bR{3�}3������H�ä�~-&�7��7���$�˿&�]�^_^L�7���ߓ^��k�%�������M$��!���bu���⑿y�?3�����VG�/�9F{�gٟ��u���"��f��ೌ:�y���$�f?�,{_^�7��g��>�QG����M!������r֑�ˋA�f���H��gY:�Ћ@�&���P���Y:�0�@�&P��R��eB1���(śA�sK��?�(
�yE�xS(~n����š3�8o��-�?�L�Ht�a�����R��gZ,:�0�E�fQ��R��gZ4:�0�F�Q��R��gZ<:�0�G��Q��R��gZD:�0�H�&R��R��gZL:�0�I�fR��R���ZL:����I��ڟ����{!����n��`�֙����H��v�~ӭ3�W/ �7���ʹ���:s|��Q���J����:�u���+�i�y��0�E���Q�����g����^0�o���h�y��,�Ţ�fQ�����g���^(�o��h��~H��F�h�I4~f����z�<�l��DC(ʬ�\_�84�:Y��`G�Qo�0{�#��(
�7��N�=�ב�l��BC'Ξ���}6@��;�ɳ��:nYWo�@{�#��(�7��N�=�֑�l��@C+Ҭt��,�7��Ҥ�b��g�4��J�֊Bg�͢�|Sh*MZ+�}6�C�͡�4i�Ht��,�7��Ҥ�b��g�X4�,�J�֊Fg�͢�|�h*MZ+�}6A��W��VD:�l��HSi�Z1��YL�o&M�IkŤ��V1i����&͋Ig��b�z3i)M���B[Ť�f�R�4/&����I�ͤ�4i^L:m�֛IKiҼ�tF�*&�7��Ҥy1鬴ULZo&-�I�bҙi����LZJ��Ť���FT)M���P[Ť�f�Қ���S��b�~3i�L�s��9wi���u&������x��<�:���`{��]4�om�I{�=��.�7��Τ=�מ�p���D[gҞ�k�q��C�͡�3i�͵�8�E����֙����s�b�~3h�L�sk�97�T<jMZ��@���W=
eZQ�D� {���V�"�]xB�xQ�x)�Z�(��ǋ��K�ԊHYy^?^T?^R�Vǎs,����R����� ������b�蔭�	�E�TkE��=/� /� /�\+Je�yAyQyi�Zq*�O����6�`�Uf��>�m�d+R��h�hs�mJ�f��+st@gڦ�mV�:��0��R۔��
VgA��k�R�Y��H�\�{mS�7+\�iXls�mJ�fū3%�m��M)଀u֤a���i%��Τ4H���mk:�\��>��Q�mM��[���~���Q"��Z�S��]����mk:#�܃�\@��Q�mM'型�#Ƞ�6
����s�r�F�5��{��[N!���(ᶦ�s�]x��$�F�5��{.��=���6���i�s��-�Q�m��t^��1-�Q�m�4u^��5A�Q�m��u^������{�/�)}��rA�m�v�+���rA�mx�+���rA�mTy�+ŝ�rA�m�z�+ݝ�rA�m�{�+���rA�m}�k��rA�m�}[(%^�rA�m�~[(=^�rA�mT[(U^�rA�m�[(m^�r~Y����zQ��M�Qn�tzQ��M!�Q	n��zQ��M-�Qn�4{Q��E9�Qn��{�պ�e3(�p��{n�-e�AnT�[�)��9�LBn��[�I>�C#!7�­�4_�C �7
í�2W�:BnT�[��:����#��:����|����p�:�7��EhÍ�p�:�7��CD�Í�p�:�WX��	u�Qn]+��J�9!7*�m(���rqB%n��ېJ�bS.NHōZqJ�g��\�Ћ�6��ϊP�8!7��m(���rqB9n���P�?+N����~����Y��~�
��"rJ�gE�\����6���
X�8�&7��mh��rsBPnT��TڿV���	M�QTnSi�Z+'d�F]�M���X�8�,7J�m*�_+b�ℸܨ.��������r��ܦ���"V.NH̍s�J�׊X�8'>��ؤ�����Bs��ܦ���"V.Nh͍bs�Z��}��W����ܨ7����w�ߧNBon���ٿ�������t���^����H(΍�s[�Xz�z	ɹQsnKg���ԿO=|���(:����7�ߧ:BtnT���ٿ����S�:7��m����m�����*�O��ٿ���S�;7
�mi��r|BznԞ�Vڿ(B�����(@���Q���	�Q�n[i��(��Jt�ݶ��Eq*�'��F=�m���"UnOhҍ�t�J�Ūܞ��鶕�/�V�=�N7��m+�_�r{B�nԨ�Vڿ(b����L~���E��v�0�ݳ0����u�g�R�Q��.��+^�����aR��.�1��u��bR��.����y��GbR��.���c�9�I�z���X����R�Q��.��+T�@�ToT��K���T�P(����RZ�U>J�F�z��ү8�O�R�Q��L��샩�46�g��C{��ϞS��kP�7�ԛ鬟�:5O��F��N��ש�QP�7*ԛ鼟E�z}z�>��N�Y�S��NoT�7ә?u�����f:�g�N=|�2�Q��L��lթOХ7�қi��:��	)��oJ�׊Pg�5|�8?V�)�_+F���^�'�K��W�:˯�����Mi�Zq��9��)~�xSڿV�:˯����Mi�Z��,��秌7��kE���>g�4ޔ�����k��q~�xSڿV�:˯����q�Mk�Z+���J��J��E��~P�7*՛+��r�A�ިTo��^�����6~��A�E�\P�7*՛+���? ��To��^����z�R����y+ ��J��J��E�\�P�7*՛+��rB�ިTo��^���z�R����=w���:��u�-t��Y���	�z�J����=��׽<�QoԨ��ٿ�V���g�[��-·�E�z�}z�>����=7�׽<�NoT���ٿ�>���'����:��ܦ_��2�Q��Bg�����^�Х7��[h��s�~����F]z�J�W���	ez�2�u�����C(h���K������Fuz��/�ձ�QЧ7��[���:�@����SJ�W���	�z�F�u��+L��J�Q�޺R��rsB�ިSo]i�
T99�ToT����~ũܜP�7*��P:?+P��R�Q�ކT��rqB�ިToCi��P��J�F�zJ�gŪ\�P    �7*��Pz?+X��R�Q�ކR�Y�*�������
W�8�ToT���TV���	�z�R�������A ��mh�����ToSg�Z�*�&t�:�6u��s�~�{�A�ިRoS��������F�z�:���U�S��PoT�����;�<�p
��F}z�:���Q�S��NoT�������<�0j�{;�ŝ:���M�S��LoT�������<��	��F]z�Z���Kϓ��Koԥ������<7ߏ
��2�-���bTn?h���m)��r�A�ިNoK����T�?����m)��r�A�ިPoKi��X���F�z[J��E��P�7���R�?/^�\��a~Ӱ��y+' ��J����ϋX��ToT����Q���z�R�m���"Vn@(���m+�_�rB�ިTo[i����J�F�z��W��rB�ިTo[i����J�F�z�J�E�܀P�7*��Vڿ(b��R�Q�޶��E+7�Ʒ���ѵ�/�Xg��/H�woH�ٿ�ՙ���S���%|���8:T�N��_��~֡��yxM:5�~	����/��BݩP�Kh���u�W�S��N��:t�C�e�T����~��Px]:��~�߬C�9^�Ne�_:���8��+өK�K+�v�_]�S��t~���<���t�2�M*��M�jzhӝ�t7�����Y�u�S���~V�:�ӡOw��ݔ��
Rgq:�N���R�Yq�,N�FݩQwS�?+T���P�;U�nJ�gE��8:u�N�M����u�C��T��i����t(՝JuoJ�׊Xgq:��N��7��kE��8Ju�Rݛ�;E��8Ju�Rݛ���"�Y���S��Mi�Z�,N�RݩT�����u�C��T�{SڿV�:�ӡTw*ս)�_+b���P�;��ޔ�����t(՝JuoZ�׊Xgs:��N�����y�*�&t�N�����y�*'T�N�����=���^�Ш;5���G~z�z	��S�ϝ��7'��N}����=7���P�;���:��ܧ�{uB��Ԧ����s�>��	e�S��]��w't�N]����=w���Х;u�J��ܥ�{{B��T�{(��s�>��	m�S�Q���	u�S�Q���	}�S��!}�_�*�'�N�����E�*�'4�N�����E�*�'T�N�����E�*�'t�N�����E+�'��N�����E+�'��N��w��+`��RݩT�.}�_{x��S��]���:��
Ju�Rݻ�u���N��w��{���	��S��])��U�:�Tw*ս+�_�*G'��N��w��+R��RݩT���~���P�;��޵ү8��Ju�R݇��Ya*�&t�N����+J�ބJݩR���~V�ʽ	��S��C���[�q/?(ԝ
u:��ܩ�{�A��ԧ�Љ��9��^~P�;��>t��y������Nm���{��>��e�S��C���'��{�A��ԥ��ʿ�	��^~Х;u�>���y������Ne�O��{��>��m�S��S���V�JA��T��Tڿ�	��^~Ч;��>���y�����N��O��kŪ\~Ш;5�>����r�A��T��TڿV�����S��Si�Z+���N��O��kE�\~P�;�꾔�ϋX9��Tw*�})��r�A��T��R�?/b���RݩT�%}�g+���N��/���"V�?(՝Ju_J��E��P�;�꾔�ϋX9 �Tw*�})��rB��T��R�?/b��RݩT���^����S��[g��x�:u�Nݷ��E�*7 T�N��o���bUn@hԝu�:�������
u�Bݷ��Q�>B��ԧ��ٿ睤�^�P�;��u��y#i��'��Nm�o��{�G���	e�S��[g�����{yB��ԥ��ڿ�m�=�g@�ԥǥ�W�X�c߀�K�ڿ:�ϱ�}*.�s?��v�u8�����_��c�p�QqI�_{�c;��GJ)��Rgu4�A�z\J�W�:�3�R���Rj���ٜ�zP�������(ՃJ���ү8u6g@�T��)�����(ՃJ�0��+R��P���aJ�g���8J��R=L���Xug@�T��)�����(ՃJ�0�����Y��zP��4V�:�3�T*�Ô�ϊWgq��A�z���Y�,΀R=�T��?+b��P����t������ԃ:�h:�׊VgoT�A�z4�w��Ugo4�A�z4��kE��7
��B=���=w��/�O�ӣ���s������:=���=���/�Mjӣ���s������2=���=w��/�K�ңi��s���.=�KWڿ�.=��ezP����]z�����6=\i��������Auz����^�NA�ԧ�+��r�A�T��+��r�A�Ԩ�+��r B�T��+��rB�ԩ�+��rB�T��k��rB�T�G(�_�rB�T�G(�_�rB�T�G(�_�rB�T�G(�_�rB�T�GH��W���zP���Q���zP���Q���zP���Q���zP���Q���zP���Q���zP�]g�
W9�S�ԣ_�W�VA�T�G>��=��F=�Q�.��_z(�zP�]h�~?�S7��A}zt���u��"��Auzt��ϡ99�Mjӣ�߬C�L*ӣ�ߪC�K�ңk�߮��K��c(��s����2=�L�!�~V� B�Ԧ�PZ��.���	uzP�C����t�'��A}z����T.N(ԃ
�J�gũ\�Ш5�1���
U�8�R��c(՟�rqB�ԩ�P�?+`��R=�T���V���	�zP�Si�Z+'��A�zL��kE�\�P���1���+b��R=�T�������J��R=����"V.N(ՃJ��J�׊X�8�T*�c*�_+b��R=�T�������J��R=����"V.N(ՃJ��Z�׊X�9�T*�c���roB�ԩ���?/Z���J=�R���^���	�zP�K���"UNN(ԃ
�X:��ũܜЧ��t��Qo�*�:=�N����}z�g��Amz,��{n�۽��L*�c���s���E]zP�Kk����vo"�҃���J��ܥ�{A�T��Vڿ�.�ݛ���6=���=w���DP��鱕��Ko�&�>=�O�-}�_<��&�B=�P���Q��M�zP�[i��h��*��J=���E�*t�A�zl���"V."(ՃJ��Z�E���:��J�~)�_�L��z�R�_���ձ����7��%}�gk�X�c߸��u�u�8�M�~I��s�CJ�N�z���Xu�P�R�S��/��+T�1ԡT�T��K���Tg	u(�;���RZ�ՙBJ�N�z��ү8u�P�R�S��M���0u�P�N�S��M(��Rgu��;U��t��
Rguh�;5��t��U�Tp
�N�z7��{��-\�>�S��M'��uK	סN�T�wә��>�rovh�;���t��M�ܛ��Nez7��{��-�f�.�S��M+���t��١K�ԥ����]����P�w*�{Sڿ�.�rqvh�;��I������F��;��)�_+N��١O�ԧ����Hug�B�S�ޛ���b�Y��N�zoJ�׊Vgqv��;U�)�_+^��١S�ԩ�����ug�R�S�ޛ���"�ٜJ�N�zw���"V.N(�;��ݕ�ϋX99�T�T�wW�?/b��R�S��]���"V�N(�;��ݕ�ϋX�:�T�T�wW�?/b��R�S��]i�����J�N�zw���"VO(�;��ݕ�ϋX�<�T�T�w��?/b���R�S��Cg��x��:�N�z����U.O��;U�=t�/�U�<�Q�Ԩ��ٿ(R��B�S��C�ƿߟ�i�^�Чw��{����9�y�#����:��y��95�'����:��y��ݦ�C�ީL�'��m:;t靺�Z��y��ݶ�C�ީK�]i��:�`��Nez����ձ��Цwj�{�>���=`�:�S�޻�u�!#����ޥ毎=��B�S�޻R��ruB�ީQ�]��
S9:�R�T����~ũܜЩw��{WZ�UNN(�;��k�_q*7'��J�>���
T�8�T�T��!�~E�\�P�w*��PZ?+T��    R�S�އR�Y�*'��J�>���
V�8�T�T���V���	�z�R�����U.N(�;��}(՟�rqB�ީT�C������J�N�zZ�gE�ܜP�w*���ٿV�ʽ	�z�N�O��kE�ܛP�w���~�X�{�N�z�:�׊T�7�P�T�����8�{��N}z�:��y'�};G��;��}���獤���M�Ԧ������ڷs�2�S�ާ��}�Fj����N]z�Z��y�}{G��;u�})���}��m�L�T�����7�ڷu�6�S�ޗ��}�Ij����Nuz_�G~z�{8}z�>�/�����Ծ�#�
����ϋU���Q�Ԩ���^���z�J�/����U.@��;u�})��rB�ީT�Kk����J�N�z�J�E�܀P�w*��Vڿ(b��R�S�޷��E+7 ��J����/�X��T�T��-}�_+7 ��J����/�X��T�T����Q���z�R�o���"Vn@(�;��}+�_�rB�ީT�[k���u6��R}P�>.��+\�	8�Sԩ�K�ڿ:4Ρ}�j\��~֡~u8��q	��W��sh��oJ�Kh��P;�v8���N�}�t�mP���ǥ�~��Ρ���~�9�,�e��2}\:���u�p�$���u��Х�҇)��s�~��P�*ӇI��չ�ЦjӇ)��s�~��P��Ӈ)��s�~��Ч�Ӈ)��s�~��P�*ԇ)ş���Шjԇ)͟���P��ԇ)՟���Щ�ԇ)ݟ���P�*Շi����P�*�GSڿV�:�s@�>�TMi�Z�,����R}4�w��Xgq(���)�_+b��9�TT������u�R}P�>����"�Y�J�A��hJ�׊Xgq(���)�_+b��9�TT������u�R}P�>����"�ٜJ�A��p����U�M��u��u�ϋV98�RT���?/V��F}P�>\���"UNN(���u�ϋS�9�Oԧ��?/J��:}P�>\g�>��׾ �����:���M?���2}P�>\g�>w�y��t郺��Z���Kϓ��Kԥ�Pڿ�]z�{e��2}���}�����(h���#���s���JA�>�N�����<�p
��A}�����=��B}P�>Bi�>w�y�a4��J�E�܀P���G(�_�rB�>�S��Q�����R}���E+7 ��J�ѕ����J�A������ձ�WP�*�G�>���=��R}P�>��u���J�ѥ毎=��R}P�>�R��r�A�>�T]��
U9��TT����~E��~P�*�GWZ�UN?(���k�_q*���J�1t��
S���Sԩ�!�~E�\~P�����Y?+H��F}P�>�N�Y1*��
�1t��
Q���Oԧ��V���u��:}���ܧ_���Цj��Щ��mz�z�e��2}���ܥ�SsoB�>�KC+�>w�y�#t郺�1���s���.B�>�LSi�>w�y�!#����1���ku�a#����1���s���:B�>�OSi�>w�y��#�
�1���s���BB�>�QSi�Z�*'T�*�1����rqB�>�SSi�Z+'��J�1����rsB�>�TKi�����J�A��XJ��E���P�*��R�?/b��R}P�>����E��P�*��R�?/b��R}P�>���y+g'��J����ϋX�;�TT����^���	���R},���"V.O(���ci��r|B�>�T[g��x��:�A���:�E�\�P�����ٿ(V��F}P�>���E�*�'�
���o�+N��>}P�>���EQ*�'�����u�/�Q�<�MԦ����m���'�����u��K���.}P�>���=w�3��.}R�>/�����u�58��yI_�W��sl�c߄�����u�8�:�FԼ�_��c�96��7��%5ul�c;��GJ)�z������Rz�QǶs�c'�H)�_q�l�	���N}^J�W�:�sB�>�T��V����P�O*է)�����P�O*էI�_��,�	���R}���Y��,�	���R}�R�Y��,�	���R}���Y��,�	���R}�R�Y��,�	���R}���Y��,�	���R}�R�Y��,�	���R}���Y�,�	���R}�V�Y�l�	���R}6��kū�7't�:��t����ޜP�O��g~�Xu��F}R�>����"�ٛ
�I��l:�׊SgoN��'����_+J��9�N�T�Ϧ��u��6}R�>����"�ٛ��Ie�l:��ܥ�\~��I]�lZ��ܥ�{�A�>�K������=��L�T�OWڿ�	���~ЦOjӧ+����q�?��'��ӥ���:�p
��I}�t��{��>�����B}���=OP���F}R�>]i��'��{ B�>�R�����ǽ �S�ԩOWڿ�	�㞀P�O*էk����qo@(�'��3��/�X��T�T��Pڿ(b��R}R�>Ci����J�I�����"Vn@(�'��3�o�+b��R}R�>Ci����J�I�����"Vn@(�'��3��/�X��T�T��Pڿ(b��R}R�>Ck����J�I���:�W��	���N}v�k����*��'U���Y�PA�>�Q�]�ſ:�P

�I���B�W�DA�>�O�]'��O���N�T�Ϯ�~�ЦOj�g�i�"Sn?(�'����K=U�.}R�>�V��:����I]�J�����ߋ��Ie�R�gu�"����9���y'i�'����9���y+i�'����9���y/i�'�
�9���y3i�'4��9���y7i�'T�*�9���y;i�'t�:�9���
X�8�T�T�ϡ�V���	���R}N��kE�\�P�O*��TڿV���	���R}N�w��X�8�T�T�ϩ�����J�I���J�׊X�8�T�T�ϩ�����J�I���J�׊X�8�T�T�ϩ�����J�I���J�׊X�8�T�T�ϩ�����J�I��\:��ūܛЩO�����?/Z���J}R�>���y�*'4������,R��B}R�>���yq*7'�����t�ϋR9:�N�T�ϥ�^���	m��6}.���"T�N(�'��s���rwB�>�K�Kk�����7 t铺�����K�{B�>�L�[i�����7 ��������K�{B�>�N�[i�����7 ������o��:��

�I���J��ܥǽ�Q�Ԩϭ��]z�*�I���J��ܥǽ�S�ԩϭ��]z�J�I���Z�E����J�u)�_�L����R}]���ձ����7��%}�g;ϱǾq�.����q�8�M�uI�_�ϱ���#�Ū����J�u)�_�ꌿ���R}]J�W�:�oA���T_������[P�/*�ץ�~ũ����J�e:�g����t�:�eB�W�:�oA���R_��~V�:�oA���Q_��~V�:�oA���P_��~V�:�oA���O_�V�:�oA���N_�3V�:�oA���M_�SV|:�oA���L_�sVx:�oA���K_���]��v\Х/��WSڿ�.�sq.(���)��s��8����դ��ku�a#����Ք��K�\���E}�jJ��ܥ{.����B}5��{��=�F}Q�����=w鞋sA���R_Mi���t�Ź�S_ԩ����]���\P�/*�W�ڿV�:�sA���T_��^���	���R}���y+''��J��J��E�ܜP�/*՗K�Y���	���R}���y+W'��J��J��E���P�/*՗+��rwB���T_��^���	���R}���y+�'��J��Z��E��P�/*�W��_�ryB���S_��Q���	���J}���E�*�'4��:�E�\�P�/*�W��W���	}��>}���EQ*�'����:�Ũ\�Ц/j�W��_�ryB���L_��Q|��	]��.}���E�)�'t鋺�Օ���vO"(���K_�WǞ��Ц/j�W�>���=m�N_T��.��_{��B���O_]j����
�E���J�����7�E���J�7���W*�E���J�7���{ �  ��N}u��[u���J�E���Z鷟�s	A���T_C���@�KJ�E��R�W��%���R}���BU.!(���k(���r	A���T_C���`�KJ�E��J�gE�\BP�/*��P�?+\��R}Q���R�Y�*w��J�5���
X���T_T����V��5���R}M��kū\CЩ/����ٿV��5���J}M�w��U���Q_Ԩ����H�k
�E���:�׊S���O_ԧ����(�k��Eu��:�׊Q���M_Ԧ�����K��Ee��:��ܥ���K_ԥ����]����E]�ZJ��ܥ�m�L_T�����]�ݓ��Em�ZJ��ܥ۽9�N_T��%}�׹��Ч/���Rڿ�.���	���B}-��{��힝Ш/j��Rڿ�.���	���J}-��{����Щ/���R�?/b��R}Q�����y+�'��J����/�X�=�T_T����Q���	���R}m���"VnO(���k+�_�r{B���T_[�ƿ"VnO(���k+�_�r{B���T_[i�����J�E���J�E�ܞP�/*��Vڿ(b���R}Q�����E�����R}_:�W�:�sC���Sߗ�u�:�68�ͪ}	��Y��s�áoP�K�ſ:t�C}Sj_B�W��sh�C;� ��_��l�u��:}_:�Wp:�sC���MߗN�����P�o*����~��387t雺�}i��������sC���Kߦt~�'�繇�P�o*ӷI��=�Ź�M�ԦoSZ���햜��Mu�6���<A�n˹�O�ԧoSz����֜
�M��6���<A�nϹ�Q�ԨoS������*�M��6���<A�nӹ�S�ԩoS�����V�J�M��6���"�ٜJ�M��nJ�׊Xgqn(�7��)�_+b�Ź�T�T��&��_�,����R}7��kE��87��J�ݔ������P�o*�wSڿV�:�sC���T�Mi�Z�,����R}7��kE��87��J�ݔ������P�o*�w�ڿV�:�sC���T߮�^�ʽ	���N}���y�*'T�*��:��Ū\�ШojԷ�Y���	���B}���yq*7'�����:��E��P�o�ӷ���ruB���M߮�^���	e��2}���y�)w't雺��Z��ŧ�Хo��w(���}�v[�e��2}���}�Hj�u�Цoj�w(��睤v[�u��:}���}�Jj�u�Чo��wH��u�!�
�J��y3���qC���Qߡ��w��m7T�*�J��y;���qC���Sߡ�����m7��J�Z��y?���qC���T�]i�
X9�T�T��.}��sl.@(�7��K��Y�\A���T�]�ſ:��
J�M���R�W�XA���T�])��U���T�T���~��P�o*�wWj�"Un?(�7��+�_�*���J�ݵү8��J�M��:�g��\~Щo���J��T.?��7U�{謟�r�A���Q�C�����
�M��:�g��\~Чo���Љ?+B��:}S�����Y*�����=t�ϊO���L�T��sVx��]��.}����S.?��7u�{*��s�~����Me��J��ܥ_��6}S����;�97'����=���K���	}��>}O��{�ү{qB���P�Si�����^�Шoj��Tڿ�.��'T�*�=���K���	���N}O��{�ү{qB���T�Sk�����ޜP�o*��R�?/b��R}S�����y+''��J����ϋX�9�T�T��%}�g+G'��J����ϋX�:�T�T�若^���	���R}/���"V�N(�7��{)��rxB���T�Ki�����J�M��^Z��E��P�o*���ٿ(^��N}S�����E�*�'T�*��u�/�U�<�Q�ԨﭳQ���	���B}o���S�<�O�ԧﭳQ���	u��:}o���bT.Oh�7��{��_�ryB���L�[g�������M]��Z�ŧ�>�0���3���P ����o�������=�     