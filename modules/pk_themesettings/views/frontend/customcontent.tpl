{*
 * 2007-2013 PrestaShop 
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Academic Free License (AFL 3.0)
 * that is bundled with this package in the file LICENSE.txt.
 * It is also available through the world-wide-web at this URL:
 * http://opensource.org/licenses/afl-3.0.php
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@prestashop.com so we can send you a copy immediately.
 *
 * @category   Promokit modules
 * @package    Promokit Module
 * @author    Marek Mnishek <marek@promokit.eu>
 * @site    
 * @copyright  Copyright 2013 Promokit Co. (http://promokit.eu) 
 *}
<section data-section="12" class="page-product-box">
	<div class="rte">
        <p>
            Bata Chile se preocupa de entregarte toda la información que necesitas para asegurar que selecciones el calce perfecto. Debes tener en cuenta que el número indicado en la caja del zapato puede no coincidir con el solicitado en tu pedido debido a que la talla se encuentra expresada de acuerdo a la normativa internacional.
        </p>
        <div style="height: 200px; overflow-y: scroll;">
            {if $product->category == 'ninos'}
            <table class="table-sizes">
                <thead>
                    <tr>
                        <th>CHILE</th>
                        <th>USA</th>
                        <th>UK</th>
                        <th>CM*</th>
                    </tr>
                </thead>
                <tbody>
                    <tr class="par">
                        <td>20</td>                            
                        <td>5,5</td>
                        <td>4</td>
                        <td>13</td>
                    </tr>
                    <tr>
                        <td>21</td>
                        <td>6</td>
                        <td>4,5</td>
                        <td>14</td>
                    </tr>
                    <tr class="par">
                        <td>22</td>
                        <td>7</td>
                        <td>5,5</td>
                        <td>14,5</td>
                    </tr>
                    <tr>
                        <td>23</td>
                        <td>7,5</td>
                        <td>6</td>
                        <td>15</td>
                    </tr>
                    <tr class="par">
                        <td>24</td>
                        <td>8,5</td>
                        <td>7</td>
                        <td>16</td>
                    </tr>
                    <tr>
                        <td>25</td>
                        <td>9</td>
                        <td>7,5</td>
                        <td>16,5</td>
                    </tr>
                    <tr class="par">
                        <td>26</td>
                        <td>10</td>
                        <td>8,5</td>
                        <td>17</td>
                    </tr>
                    <tr>
                        <td>27</td>
                        <td>11</td>
                        <td>9,5</td>
                        <td>18</td>
                    </tr>
                    <tr class="par">
                        <td>28</td>
                        <td>11,5</td>
                        <td>10</td>
                        <td>18,5</td>
                    </tr>
                    <tr>
                        <td>29</td>
                        <td>12,5</td>
                        <td>11</td>
                        <td>19</td>
                    </tr>
                    <tr class="par">
                        <td>30</td>
                        <td>13</td>
                        <td>11,5</td>
                        <td>20</td>
                    </tr>
                    <tr>
                        <td>31</td>
                        <td>14</td>
                        <td>12,5</td>
                        <td>20,5</td>
                    </tr>
                    <tr class="par">
                        <td>32</td>
                        <td>15</td>
                        <td>13,5</td>
                        <td>21</td>
                    </tr>
                    <tr>
                        <td>33</td>
                        <td>2,5</td>
                        <td>1</td>
                        <td>22</td>
                    </tr>
                    <tr class="par">
                        <td>34</td>
                        <td>3,5</td>
                        <td>2</td>
                        <td>22,5</td>
                    </tr>
                    <tr>
                        <td>35</td>
                        <td>4</td>
                        <td>2,5</td>
                        <td>23</td>
                    </tr>
                    <tr class="par">
                        <td>36</td>
                        <td>5</td>
                        <td>3,5</td>
                        <td>24</td>
                    </tr>
                    <tr>
                        <td>37</td>
                        <td>5,5</td>
                        <td>4</td>
                        <td>24,5</td>
                    </tr>
                </tbody>
            </table>
            {else if $product->category == 'mujeres'}
            <table class="table-sizes">
                <thead>
                    <tr>
                        <th>CHILE</th>
                        <th>USA</th>
                        <th>UK</th>
                        <th>CM*</th>
                    </tr>
                </thead>
                <tbody>
                    <tr class="par">
                        <td>35</td>                            
                        <td>5</td>
                        <td>2,5</td>
                        <td>22</td>
                    </tr>
                    <tr>
                        <td>35,5</td>
                        <td>5,5</td>
                        <td>3</td>
                        <td>22,5</td>
                    </tr>
                    <tr class="par">
                        <td>36</td>
                        <td>6</td>
                        <td>3,5</td>
                        <td>23</td>
                    </tr>
                    <tr>
                        <td>36,5</td>
                        <td>6,5</td>
                        <td>4</td>
                        <td>23,5</td>
                    </tr>
                    <tr class="par">
                        <td>37</td>
                        <td>7</td>
                        <td>4,5</td>
                        <td>24</td>
                    </tr>
                    <tr>
                        <td>37,5</td>
                        <td>7,5</td>
                        <td>5</td>
                        <td>24,5</td>
                    </tr>
                    <tr class="par">
                        <td>38</td>
                        <td>8</td>
                        <td>5,5</td>
                        <td>25</td>
                    </tr>
                    <tr>
                        <td>38,5</td>
                        <td>8,5</td>
                        <td>6</td>
                        <td>25,5</td>
                    </tr>
                    <tr class="par">
                        <td>39</td>
                        <td>9</td>
                        <td>6,5</td>
                        <td>26</td>
                    </tr>
                    <tr>
                        <td>39,5</td>
                        <td>9,5</td>
                        <td>7</td>
                        <td>26,5</td>
                    </tr>
                    <tr class="par">
                        <td>40</td>
                        <td>10</td>
                        <td>7,5</td>
                        <td>27</td>
                    </tr>
                    <tr>
                        <td>40,5</td>
                        <td>10,5</td>
                        <td>8</td>
                        <td>27,5</td>
                    </tr>
                    <tr class="par">
                        <td>41</td>
                        <td>11</td>
                        <td>8,5</td>
                        <td>28</td>
                    </tr>
                </tbody>
            </table>
            {else}
            <table class="table-sizes">
                <thead>
                    <tr>
                        <th>CHILE</th>
                        <th>USA</th>
                        <th>UK</th>
                        <th>CM*</th>
                    </tr>
                </thead>
                <tbody>
                    <tr class="par">
                        <td>37.5</td>                            
                        <td>6</td>
                        <td>5,5</td>
                        <td>24</td>
                    </tr>
                    <tr>
                        <td>38</td>
                        <td>6,5</td>
                        <td>6</td>
                        <td>24,5</td>
                    </tr>
                    <tr class="par">
                        <td>39</td>
                        <td>7</td>
                        <td>-</td>
                        <td>25</td>
                    </tr>
                    <tr>
                        <td>39,5</td>
                        <td>7,5</td>
                        <td>6,5</td>
                        <td>25,5</td>
                    </tr>
                    <tr class="par">
                        <td>40</td>
                        <td>8</td>
                        <td>7</td>
                        <td>26</td>
                    </tr>
                    <tr>
                        <td>40,5</td>
                        <td>8,5</td>
                        <td>7,5</td>
                        <td>26,5</td>
                    </tr>
                    <tr class="par">
                        <td>41</td>
                        <td>9</td>
                        <td>8</td>
                        <td>27</td>
                    </tr>
                    <tr>
                        <td>42</td>
                        <td>9,5</td>
                        <td>8,5</td>
                        <td>27,5</td>
                    </tr>
                    <tr class="par">
                        <td>43</td>
                        <td>10</td>
                        <td>9</td>
                        <td>28</td>
                    </tr>
                    <tr>
                        <td>43,5</td>
                        <td>10,5</td>
                        <td>9,5</td>
                        <td>28,5</td>
                    </tr>
                    <tr class="par">
                        <td>44</td>
                        <td>11</td>
                        <td>10</td>
                        <td>29</td>
                    </tr>
                    <tr>
                        <td>44,5</td>
                        <td>11,5</td>
                        <td>10,5</td>
                        <td>29,5</td>
                    </tr>
                    <tr class="par">
                        <td>45</td>
                        <td>12</td>
                        <td>11</td>
                        <td>30</td>
                    </tr>
                </tbody>
            </table>
            {/if}
        </div>
        <!--<p class="review-size">
            <a href="{$base_dir}upload/ComparativeSizeChart.pdf" target="_blank" title="Revisa tu talla">Revisa la ilustración y descubre la medida de tu pié</a>
        </p>-->
	</div>
</section>
{if (isset($pk_video_id) && ($pk_video_id != ""))}
<section data-section="13" class="page-product-box">
	<div class="rte">
		<!--[if !IE]> -->
		<div class="videoWrapper"><iframe id="ytplayer" type="text/html" width="420" height="270" src="https://www.youtube.com/embed/{$pk_video_id}" frameborder="0"></iframe></div>
		<!-- <![endif]-->
		<!--[if gt IE 8]>
		<div class="videoWrapper"><iframe id="ytplayer" type="text/html" width="420" height="270" src="http://www.youtube.com/embed/{$pk_video_id}" frameborder="0"></iframe></div>
		<![endif]-->
		<!--[if lte IE 8]>
		<object id="ytplayer" width="420" height="270"><param name="movie" value="https://www.youtube-nocookie.com/v/{$pk_video_id}?hl=en_US&amp;version=3&amp;rel=0"></param><param name="allowFullScreen" value="true"></param><param name="allowscriptaccess" value="always"></param><embed src="https://www.youtube-nocookie.com/v/{$pk_video_id}?hl=en_US&amp;version=3&amp;rel=0" type="application/x-shockwave-flash" width="420" height="270" allowscriptaccess="always" allowfullscreen="true"></embed></object>		    
		<![endif]-->  
		</div>
</section>
{/if}